import { NextRequest, NextResponse } from "next/server";
import sharp from "sharp";
import { extractTextFromImage } from "@/lib/ocr";
import { findCandidates } from "@/lib/productMatcher";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export const runtime = "nodejs";

const ROTATIONS = [0, 90, 180, 270] as const;

async function rotateToBase64(buffer: Buffer, angle: number): Promise<string> {
  const rotated =
    angle === 0
      ? buffer
      : await sharp(buffer).rotate(angle).toBuffer();
  return rotated.toString("base64");
}

export async function POST(req: NextRequest) {
  let combinedText = "";
  let candidates: string[] = [];
  let errorMsg: string | null = null;

  try {
    const formData = await req.formData();
    const file = formData.get("image");

    if (!file || !(file instanceof Blob)) {
      return NextResponse.json({ error: "image is required" }, { status: 400 });
    }

    const buffer = Buffer.from(await file.arrayBuffer());

    // 4方向でOCRを試み、テキストを結合
    const texts: string[] = [];
    for (const angle of ROTATIONS) {
      try {
        const base64 = await rotateToBase64(buffer, angle);
        const text = await extractTextFromImage(base64);
        if (text.trim()) texts.push(text.trim());
      } catch (e) {
        console.warn(`[label-scan] OCR failed at ${angle}°:`, e);
      }
    }

    combinedText = texts.join("\n");

    // 結合テキストでマッチング
    candidates = await findCandidates(combinedText);
  } catch (e: unknown) {
    errorMsg = e instanceof Error ? e.message : String(e);
    console.error("[label-scan] error:", errorMsg);
  }

  // ログ保存
  try {
    await supabaseAdmin.from("ocr_scan_logs").insert({
      raw_text: combinedText || null,
      candidates,
      error_msg: errorMsg,
    });
  } catch (logErr) {
    console.warn("[label-scan] log save failed:", logErr);
  }

  return NextResponse.json({ candidates, rawText: combinedText || null });
}
