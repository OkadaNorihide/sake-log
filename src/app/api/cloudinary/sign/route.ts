import { NextResponse } from "next/server";
import crypto from "crypto";

export const runtime = "nodejs";

export async function GET() {
  try {
    const cloudName = process.env.CLOUDINARY_CLOUD_NAME || "";
    const apiKey = process.env.CLOUDINARY_API_KEY || "";
    const apiSecret = process.env.CLOUDINARY_API_SECRET || "";
    const folder = process.env.CLOUDINARY_FOLDER || "";

    // ★ どれが不足してるかを返す（秘密は返さない）
    const missing = {
      CLOUDINARY_CLOUD_NAME: !cloudName,
      CLOUDINARY_API_KEY: !apiKey,
      CLOUDINARY_API_SECRET: !apiSecret,
    };

    if (missing.CLOUDINARY_CLOUD_NAME || missing.CLOUDINARY_API_KEY || missing.CLOUDINARY_API_SECRET) {
      return NextResponse.json(
        {
          error: "Missing Cloudinary env vars",
          missing,
          hint:
            ".env.local がプロジェクト直下（package.jsonと同じ階層）にあるか、dev再起動したか確認してね",
        },
        { status: 500 }
      );
    }

    const timestamp = Math.floor(Date.now() / 1000);

    const paramsToSign = folder
      ? `folder=${folder}&timestamp=${timestamp}`
      : `timestamp=${timestamp}`;

    const signature = crypto
      .createHash("sha1")
      .update(paramsToSign + apiSecret)
      .digest("hex");

    return NextResponse.json({
      cloudName,
      apiKey,
      timestamp,
      signature,
      folder,
    });
  } catch (e: any) {
    return NextResponse.json(
      {
        error: "Unexpected error in /api/cloudinary/sign",
        message: e?.message || String(e),
      },
      { status: 500 }
    );
  }
}
