import { NextRequest, NextResponse } from "next/server";
import { extractTextFromImage } from "@/lib/ocr";
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

    // Blob → Buffer → Base64
    const buffer = Buffer.from(await file.arrayBuffer());
    const base64 = buffer.toString("base64");

    // OCR
    rawText = await extractTextFromImage(base64);

    // マッチング
    candidates = await findCandidates(rawText);
  } catch (e: unknown) {
    errorMsg = e instanceof Error ? e.message : String(e);
    console.error("[label-scan] error:", errorMsg);
  }

  // ログ保存（失敗してもレスポンスは返す）
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
