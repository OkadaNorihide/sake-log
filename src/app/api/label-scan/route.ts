import { NextRequest, NextResponse } from "next/server";
import { identifyBottleFromImage } from "@/lib/bottleIdentifier";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export const runtime = "nodejs";

export async function POST(req: NextRequest) {
  let candidates: string[] = [];
  let rawText: string | null = null;
  let errorMsg: string | null = null;

  try {
    const formData = await req.formData();
    const file = formData.get("image");

    if (!file || !(file instanceof Blob)) {
      return NextResponse.json({ error: "image is required" }, { status: 400 });
    }

    const buffer = Buffer.from(await file.arrayBuffer());

    // bottle_master の銘柄名一覧を取得して Claude に渡す
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

  // ログ保存
  try {
    await supabaseAdmin.from("ocr_scan_logs").insert({
      raw_text: rawText,
      candidates,
      error_msg: errorMsg,
    });
  } catch (logErr) {
    console.warn("[label-scan] log save failed:", logErr);
  }

  return NextResponse.json({ candidates, rawText });
}
