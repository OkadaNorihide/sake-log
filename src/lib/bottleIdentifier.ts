/**
 * Claude Vision でボトルラベルを直接識別する
 * ANTHROPIC_API_KEY 未設定時はモックテキストを返す
 */

import Anthropic from "@anthropic-ai/sdk";

const MOCK_TEXT = "山崎 12年 シングルモルト サントリー";

type ImageMediaType = "image/jpeg" | "image/png" | "image/gif" | "image/webp";

function detectMimeType(buffer: Buffer): ImageMediaType {
  // マジックバイトで判定
  if (buffer[0] === 0xff && buffer[1] === 0xd8) return "image/jpeg";
  if (buffer[0] === 0x89 && buffer[1] === 0x50) return "image/png";
  if (buffer[0] === 0x47 && buffer[1] === 0x49) return "image/gif";
  if (buffer[0] === 0x52 && buffer[1] === 0x49) return "image/webp";
  return "image/jpeg"; // fallback
}

export async function identifyBottleFromImage(buffer: Buffer): Promise<string> {
  const apiKey = process.env.ANTHROPIC_API_KEY;

  if (!apiKey) {
    console.warn("[bottleIdentifier] ANTHROPIC_API_KEY not set, returning mock text");
    return MOCK_TEXT;
  }

  const client = new Anthropic({ apiKey });
  const mimeType = detectMimeType(buffer);
  const base64 = buffer.toString("base64");

  const message = await client.messages.create({
    model: "claude-haiku-4-5-20251001",
    max_tokens: 300,
    messages: [
      {
        role: "user",
        content: [
          {
            type: "image",
            source: {
              type: "base64",
              media_type: mimeType,
              data: base64,
            },
          },
          {
            type: "text",
            text: [
              "このウィスキー（または酒）のボトルラベルを見て、",
              "ブランド名・製品名・シリーズ名・年数表記など",
              "銘柄を特定するために重要な文字情報をすべて抽出してください。",
              "説明文は不要です。読み取れたテキストだけをスペース区切りで返してください。",
              "例: Busker Single Malt Irish Whiskey バスカー シングルモルト",
            ].join(""),
          },
        ],
      },
    ],
  });

  const content = message.content[0];
  return content.type === "text" ? content.text.trim() : "";
}
