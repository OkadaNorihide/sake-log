/**
 * Tavily Search API でボトル名を検索し、商品ページのタイトル・スニペットを返す。
 * Claude が抽出したテキストと組み合わせて findCandidates に渡す。
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
 * Claude の抽出テキストを使って Web 検索し、
 * 検索結果のタイトル＋スニペットを連結した補強テキストを返す。
 * API キーが未設定の場合は元テキストをそのまま返す。
 */
export async function enrichWithWebSearch(ocrText: string): Promise<string> {
  const apiKey = process.env.TAVILY_API_KEY;
  if (!apiKey) {
    console.warn("[bottleWebSearch] TAVILY_API_KEY not set, skipping web search");
    return ocrText;
  }

  try {
    const res = await fetch("https://api.tavily.com/search", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        api_key: apiKey,
        query: `${ocrText} ウィスキー 銘柄`,
        search_depth: "basic",
        max_results: 3,
        include_answer: false,
      }),
    });

    if (!res.ok) {
      console.warn("[bottleWebSearch] Tavily error:", res.status);
      return ocrText;
    }

    const data: TavilyResponse = await res.json();
    const results = data.results ?? [];

    // タイトルと本文冒頭を連結して findCandidates の入力を豊かにする
    const snippets = results
      .map((r) =>
        [r.title, r.content?.slice(0, 300)].filter(Boolean).join(" ")
      )
      .join(" | ");

    return snippets ? `${ocrText} ${snippets}` : ocrText;
  } catch (e) {
    console.warn("[bottleWebSearch] fetch error:", e);
    return ocrText;
  }
}
