/**
 * OCR薄いラッパー
 * GOOGLE_VISION_API_KEY が未設定の場合はモックテキストを返す
 */

const MOCK_TEXT = "獺祭 純米大吟醸 磨き二割三分 旭酒造";

export async function extractTextFromImage(imageBase64: string): Promise<string> {
  const apiKey = process.env.GOOGLE_VISION_API_KEY;

  if (!apiKey) {
    // env未設定時はモック
    console.warn("[ocr] GOOGLE_VISION_API_KEY not set, returning mock text");
    return MOCK_TEXT;
  }

  const body = {
    requests: [
      {
        image: { content: imageBase64 },
        features: [{ type: "TEXT_DETECTION", maxResults: 1 }],
      },
    ],
  };

  const res = await fetch(
    `https://vision.googleapis.com/v1/images:annotate?key=${apiKey}`,
    {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    }
  );

  if (!res.ok) {
    const err = await res.text();
    throw new Error(`Vision API error: ${err}`);
  }

  const json = await res.json();
  const annotation = json.responses?.[0]?.fullTextAnnotation;
  return (annotation?.text as string) ?? "";
}
