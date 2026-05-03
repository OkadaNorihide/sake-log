/**
 * Claude Vision でボトルラベルを識別する
 *
 * knownBottles を渡すと、そのリストの中から最も一致する銘柄を直接選択させる。
 * リストなしの場合はテキスト抽出のみ行う。
 */

import Anthropic from "@anthropic-ai/sdk";

const MOCK_CANDIDATES = ["山崎 12年", "白州 12年", "響 ジャパニーズハーモニー"];

type ImageMediaType = "image/jpeg" | "image/png" | "image/gif" | "image/webp";

function detectMimeType(buffer: Buffer): ImageMediaType {
  if (buffer[0] === 0xff && buffer[1] === 0xd8) return "image/jpeg";
  if (buffer[0] === 0x89 && buffer[1] === 0x50) return "image/png";
  if (buffer[0] === 0x47 && buffer[1] === 0x49) return "image/gif";
  if (buffer[0] === 0x52 && buffer[1] === 0x49) return "image/webp";
  return "image/jpeg";
}

/**
 * ボトル画像から銘柄候補を最大3件返す。
 * knownBottles（bottle_master の name 一覧）を渡すと、
 * Claude がリストの中から直接選択するため精度が大幅に向上する。
 */
export async function identifyBottleFromImage(
  buffer: Buffer,
  knownBottles: string[] = []
): Promise<string[]> {
  const apiKey = process.env.ANTHROPIC_API_KEY;

  if (!apiKey) {
    console.warn("[bottleIdentifier] ANTHROPIC_API_KEY not set, returning mock");
    return MOCK_CANDIDATES;
  }

  const client = new Anthropic({ apiKey });
  const mimeType = detectMimeType(buffer);
  const base64 = buffer.toString("base64");

  let prompt: string;

  if (knownBottles.length > 0) {
    const listText = knownBottles.join("、");
    prompt = [
      "このウィスキー（または酒）のボトル画像を注意深く見てください。",
      "ラベルのブランド名・製品名・年数・シリーズ名などを確認した上で、",
      "以下の銘柄リストの中から最もよく一致するものを最大3件選んでください。\n\n",
      "【銘柄リスト】\n",
      listText,
      "\n\n",
      "【回答ルール】",
      "- リストの中の銘柄名を一行に一つずつ、上位候補から順に返してください",
      "- リストにない場合は「不明」とだけ返してください",
      "- 説明・理由・番号は不要です。銘柄名のみ返してください",
    ].join("");
  } else {
    prompt = [
      "このウィスキー（または酒）のボトルラベルを見て、",
      "ブランド名・製品名・シリーズ名・年数表記など",
      "銘柄を特定するために重要な文字情報をすべて抽出してください。",
      "説明文は不要です。読み取れたテキストだけをスペース区切りで返してください。",
    ].join("");
  }

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
          { type: "text", text: prompt },
        ],
      },
    ],
  });

  const content = message.content[0];
  if (content.type !== "text") return [];

  const raw = content.text.trim();

  if (knownBottles.length > 0) {
    // 回答をリスト形式でパースし、knownBottles に含まれるものだけ返す
    const lines = raw.split(/\n/).map((l) => l.trim()).filter(Boolean);
    if (lines.length === 1 && lines[0] === "不明") return [];

    const matched = lines
      .filter((line) => knownBottles.includes(line))
      .slice(0, 3);
    return matched;
  }

  return [raw];
}
