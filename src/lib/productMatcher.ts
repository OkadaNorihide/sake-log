/**
 * OCRテキストと bottle_master テーブルを突き合わせて銘柄候補を返す
 *
 * マッチング戦略:
 * 1. トークン部分一致 × IDF重み（汎用ワードのスコアを下げる）
 * 2. バイグラム類似度（Dice係数）でファジーマッチ
 * 3. name / name_en / yomi / romaji をすべて検索対象にする
 */

import { supabaseAdmin } from "@/lib/supabaseAdmin";

const MAX_CANDIDATES = 3;

const STOPWORDS = new Set([
  "シングルモルト", "ブレンデッド", "ウィスキー", "whiskey", "whisky",
  "single", "malt", "blended", "irish", "scotch", "bourbon", "japanese",
  "years", "year", "aged", "pure", "grain", "barrel", "cask", "reserve",
  "limited", "edition", "special", "ml", "700", "40", "43", "46", "48",
  "アイリッシュ", "スコッチ", "バーボン", "ジャパニーズ", "シングル",
  "モルト", "グレーン", "ピュア", "リザーブ", "スペシャル", "ピーテッド",
]);

type BottleEntry = {
  name: string;
  name_en: string | null;
  yomi: string | null;
  romaji: string | null;
};

// ---------- tokenize ----------
function tokenize(text: string): string[] {
  return text
    .split(/[\s\n\r\u3000・、。「」【】『』（）()\-\/\\|,.\d]+/)
    .map((t) => t.trim().toLowerCase())
    .filter((t) => t.length >= 2 && !STOPWORDS.has(t));
}

// ---------- bigram similarity ----------
function bigrams(str: string): string[] {
  const s = str.toLowerCase().replace(/\s+/g, "");
  const result: string[] = [];
  for (let i = 0; i < s.length - 1; i++) result.push(s.slice(i, i + 2));
  return result;
}

function diceSimilarity(a: string, b: string): number {
  const bg1 = bigrams(a);
  const bg2 = new Set(bigrams(b));
  if (bg1.length === 0 || bg2.size === 0) return 0;
  const overlap = bg1.filter((bg) => bg2.has(bg)).length;
  return (2 * overlap) / (bg1.length + bg2.size);
}

function maxDice(searchTexts: string[], tokens: string[]): number {
  if (tokens.length === 0 || searchTexts.length === 0) return 0;
  return Math.max(
    ...searchTexts.flatMap((text) =>
      tokens.map((t) => diceSimilarity(text, t))
    )
  );
}

// ---------- IDF ----------
function buildIdf(entries: BottleEntry[]): Map<string, number> {
  const df = new Map<string, number>();
  for (const entry of entries) {
    const combined = [entry.name, entry.name_en, entry.yomi, entry.romaji]
      .filter(Boolean)
      .join(" ");
    const tokens = new Set(tokenize(combined));
    for (const t of tokens) df.set(t, (df.get(t) ?? 0) + 1);
  }
  const N = entries.length;
  const idf = new Map<string, number>();
  for (const [token, count] of df) {
    idf.set(token, Math.log((N + 1) / (count + 1)) + 1);
  }
  return idf;
}

function tokenScore(
  searchTexts: string[],
  tokens: string[],
  idf: Map<string, number>
): number {
  let s = 0;
  for (const searchText of searchTexts) {
    const lower = searchText.toLowerCase();
    for (const token of tokens) {
      const weight = idf.get(token) ?? 1;
      if (lower.includes(token)) s += token.length * weight;
      if (token.includes(lower)) s += lower.length * 2 * weight;
    }
  }
  return s;
}

// ---------- main ----------
export async function findCandidates(ocrText: string): Promise<string[]> {
  if (!ocrText.trim()) return [];

  const tokens = tokenize(ocrText);
  const effectiveTokens =
    tokens.length > 0 ? tokens : [ocrText.trim().toLowerCase()];

  // bottle_master から name + name_en + yomi + romaji を取得
  let entries: BottleEntry[] = [];

  const { data: masterData } = await supabaseAdmin
    .from("bottle_master")
    .select("name, name_en, yomi, romaji");

  if (masterData && masterData.length > 0) {
    entries = masterData.map((r) => ({
      name: r.name as string,
      name_en: (r.name_en as string | null) ?? null,
      yomi: (r.yomi as string | null) ?? null,
      romaji: (r.romaji as string | null) ?? null,
    }));
  } else {
    // マスタが空なら reviews にフォールバック
    const { data: reviewData } = await supabaseAdmin
      .from("reviews")
      .select("name");
    const unique = [
      ...new Set(
        (reviewData ?? []).map((r) => r.name as string).filter(Boolean)
      ),
    ];
    entries = unique.map((n) => ({ name: n, name_en: null, yomi: null, romaji: null }));
  }

  if (entries.length === 0) return [];

  const idf = buildIdf(entries);

  const scored = entries
    .map((entry) => {
      const searchTexts = [entry.name, entry.name_en, entry.yomi, entry.romaji].filter(
        (t): t is string => Boolean(t)
      );
      const ts = tokenScore(searchTexts, effectiveTokens, idf);
      const ds = maxDice(searchTexts, effectiveTokens);
      return { name: entry.name, score: ts + ds * 10 };
    })
    .sort((a, b) => b.score - a.score)
    .slice(0, MAX_CANDIDATES)
    .map((x) => x.name);

  return scored;
}
