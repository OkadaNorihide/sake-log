import { NextRequest, NextResponse } from "next/server";
import { identifyBottleFromImage } from "@/lib/bottleIdentifier";
import { findCandidates } from "@/lib/productMatcher";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export const runtime = "nodejs";

export async function POST(req: NextRequest) {
  let rawText = "";
  let candidates: string[] = [];
  let errorMsg: string | null = null;

  try {
    const formData = await req.formData();
    const file = formData.get("image");

    if (!file || !(file instanceof Blob)) {
      return NextResponse.json({ error: "image is required" }, { status: 400 });
    }

    const buffer = Buffer.from(await file.arrayBuffer());

    // Claude Vision でボトルを識別
    rawText = await identifyBottleFromImage(buffer);

    // bottle_master とマッチング
    candidates = await findCandidates(rawText);
  } catch (e: unknown) {
    errorMsg = e instanceof Error ? e.message : String(e);
    console.error("[label-scan] error:", errorMsg);
  }

  // ログ保存
  try {
    await supabaseAdmin.from("ocr_scan_logs").insert({
      raw_text: rawText || null,
      candidates,
      error_msg: errorMsg,
    });
  } catch (logErr) {
    console.warn("[label-scan] log save failed:", logErr);
  }

  return NextResponse.json({ candidates, rawText: rawText || null });
}
