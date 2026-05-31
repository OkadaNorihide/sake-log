import Anthropic from "@anthropic-ai/sdk";

const MOCK_TEXT = "サントリー 山崎 12年 シングルモルト";

type ImageMediaType = "image/jpeg" | "image/png" | "image/gif" | "image/webp";

function detectMimeType(buffer: Buffer): ImageMediaType {
  if (buffer[0] === 0xff && buffer[1] === 0xd8) return "image/jpeg";
  if (buffer[0] === 0x89 && buffer[1] === 0x50) return "image/png";
  if (buffer[0] === 0x47 && buffer[1] === 0x49) return "image/gif";
  if (buffer[0] === 0x52 && buffer[1] === 0x49) return "image/webp";
  return "image/jpeg";
}

/**
 * Claude Sonnet でボトルラベルを識別し、銘柄特定に使えるテキストを返す。
 * リストへの直接マッチはせず、自由形式で識別させる。
 * 後段の findCandidates (ファジーマッチ) に渡して使う。
 */
export async function identifyBottleFromImage(buffer: Buffer): Promise<string> {
  const apiKey = process.env.ANTHROPIC_API_KEY;

  if (!apiKey) {
    console.warn("[bottleIdentifier] ANTHROPIC_API_KEY not set, returning mock");
    return MOCK_TEXT;
  }

  const client = new Anthropic({ apiKey });
  const mimeType = detectMimeType(buffer);
  const base64 = buffer.toString("base64");

  const message = await client.messages.create({
    model: "claude-sonnet-4-6",
    max_tokens: 200,
    messages: [
      {
        role: "user",
        content: [
          {
            type: "image",
            source: { type: "base64", media_type: mimeType, data: base64 },
          },
          {
            type: "text",
            text: [
              "このウィスキー（または酒）のボトルラベルを見て、",
              "ブランド名・製品名・シリーズ名・年数・蒸溜所名など",
              "銘柄を特定できる文字情報をすべて抽出してください。",
              "日本語と英語どちらも読み取れた場合は両方書いてください。",
              "説明文は不要です。読み取れた情報だけをスペース区切りで返してください。",
              "例: Suntory Yamazaki 12 Year Single Malt サントリー 山崎 12年",
            ].join(""),
          },
        ],
      },
    ],
  });

  const content = message.content[0];
  return content.type === "text" ? content.text.trim() : "";
}
