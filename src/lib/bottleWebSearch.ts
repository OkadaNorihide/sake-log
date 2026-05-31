/**
 * Tavily Search API でボトル名を検索し、
 * Claude が読める構造化テキストとして検索結果を返す。
 */

type TavilyResult = {
  title?: string;
  content?: string;
  url?: string;
};

type TavilyResponse = {
  results?: TavilyResult[];
};

/**
 * OCR テキストで Web 検索し、検索結果を Claude 向けの構造化文字列で返す。
 * API キー未設定時は空文字を返す。
 */
export async function searchBottleOnWeb(query: string): Promise<string> {
  const apiKey = process.env.TAVILY_API_KEY;
  if (!apiKey) {
    console.warn("[bottleWebSearch] TAVILY_API_KEY not set, skipping web search");
    return "";
  }

  try {
    const res = await fetch("https://api.tavily.com/search", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        api_key: apiKey,
        query: `${query} ウィスキー 日本酒 銘柄`,
        search_depth: "basic",
        max_results: 3,
        include_answer: false,
      }),
    });

    if (!res.ok) {
      console.warn("[bottleWebSearch] Tavily error:", res.status);
      return "";
    }

    const data: TavilyResponse = await res.json();
    const results = data.results ?? [];

    if (results.length === 0) return "";

    // Claude が読めるよう番号付きで整形
    return results
      .map((r, i) =>
        `[${i + 1}] タイトル: ${r.title ?? "不明"}\n内容: ${r.content?.slice(0, 400) ?? ""}`
      )
      .join("\n\n");
  } catch (e) {
    console.warn("[bottleWebSearch] fetch error:", e);
    return "";
  }
}
