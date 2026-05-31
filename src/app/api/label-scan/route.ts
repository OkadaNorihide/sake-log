import { NextRequest, NextResponse } from "next/server";
import { identifyBottleFromImage, confirmBottleFromWebSearch } from "@/lib/bottleIdentifier";
import { searchBottleOnWeb } from "@/lib/bottleWebSearch";
import { findCandidates } from "@/lib/productMatcher";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export const runtime = "nodejs";

export async function POST(req: NextRequest) {
  let candidates: string[] = [];
  let rawText: string | null = null;
  let confirmedName: string | null = null;
  let errorMsg: string | null = null;
  let logId: string | null = null;

  try {
    const formData = await req.formData();
    const file = formData.get("image");

    if (!file || !(file instanceof Blob)) {
      return NextResponse.json({ error: "image is required" }, { status: 400 });
    }

    const buffer = Buffer.from(await file.arrayBuffer());

    // Step 1: Claude がラベルから自由形式でテキストを抽出
    rawText = await identifyBottleFromImage(buffer);
    console.log("[label-scan] rawText:", rawText);

    // Step 2: Tavily で Web 検索
    const searchResults = rawText ? await searchBottleOnWeb(rawText) : "";
    console.log("[label-scan] searchResults length:", searchResults.length);

    // Step 3: Claude が検索結果をもとに銘柄名を確定
    confirmedName = rawText
      ? await confirmBottleFromWebSearch(rawText, searchResults)
      : null;
    console.log("[label-scan] confirmedName:", confirmedName);

    // Step 4: bottle_master とファジーマッチ
    const masterCandidates = confirmedName
      ? await findCandidates(confirmedName)
      : [];

    // Step 5: マスターにあればそれを、なければ Web 確定名をそのまま候補にする
    if (masterCandidates.length > 0) {
      candidates = masterCandidates;
    } else if (confirmedName) {
      candidates = [confirmedName];
    }
  } catch (e: unknown) {
    errorMsg = e instanceof Error ? e.message : String(e);
    console.error("[label-scan] error:", errorMsg);
  }

  // ログ保存（id を返す）
  try {
    const { data } = await supabaseAdmin
      .from("ocr_scan_logs")
      .insert({ raw_text: rawText, candidates, error_msg: errorMsg })
      .select("id")
      .single();
    logId = data?.id ?? null;
  } catch (logErr) {
    console.warn("[label-scan] log save failed:", logErr);
  }

  return NextResponse.json({ candidates, rawText, confirmedName, logId });
}

// ユーザーが最終的に選んだ銘柄名をフィードバックとして記録
// マスターに存在しない銘柄の場合は bottle_master に自動追加する
export async function PATCH(req: NextRequest) {
  const { logId, selectedName } = (await req.json()) as {
    logId: string;
    selectedName: string;
  };

  if (!logId || !selectedName) {
    return NextResponse.json({ error: "logId and selectedName are required" }, { status: 400 });
  }

  // フィードバック記録
  const { error } = await supabaseAdmin
    .from("ocr_scan_logs")
    .update({ selected_name: selectedName })
    .eq("id", logId);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  // bottle_master に存在しなければ自動追加（教師データ蓄積）
  const { data: existing } = await supabaseAdmin
    .from("bottle_master")
    .select("name")
    .eq("name", selectedName)
    .maybeSingle();

  if (!existing) {
    await supabaseAdmin
      .from("bottle_master")
      .insert({ name: selectedName });
    console.log("[label-scan] new bottle added to master:", selectedName);
  }

  return NextResponse.json({ ok: true });
}
