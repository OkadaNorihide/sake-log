import { NextRequest, NextResponse } from "next/server";
import { identifyBottleFromImage } from "@/lib/bottleIdentifier";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export const runtime = "nodejs";

export async function POST(req: NextRequest) {
  let candidates: string[] = [];
  let rawText: string | null = null;
  let errorMsg: string | null = null;
  let logId: string | null = null;

  try {
    const formData = await req.formData();
    const file = formData.get("image");

    if (!file || !(file instanceof Blob)) {
      return NextResponse.json({ error: "image is required" }, { status: 400 });
    }

    const buffer = Buffer.from(await file.arrayBuffer());

    const { data: masterData } = await supabaseAdmin
      .from("bottle_master")
      .select("name");

    const knownBottles: string[] = (masterData ?? [])
      .map((r) => r.name as string)
      .filter(Boolean);

    candidates = await identifyBottleFromImage(buffer, knownBottles);
    rawText = candidates.join(", ") || null;
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

  return NextResponse.json({ candidates, rawText, logId });
}

// ユーザーが最終的に選んだ銘柄名をフィードバックとして記録
export async function PATCH(req: NextRequest) {
  const { logId, selectedName } = (await req.json()) as {
    logId: string;
    selectedName: string;
  };

  if (!logId || !selectedName) {
    return NextResponse.json({ error: "logId and selectedName are required" }, { status: 400 });
  }

  const { error } = await supabaseAdmin
    .from("ocr_scan_logs")
    .update({ selected_name: selectedName })
    .eq("id", logId);

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ ok: true });
}
