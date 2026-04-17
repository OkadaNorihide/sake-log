/**
 * OCRテキストと bottle_master テーブルを突き合わせて銘柄候補を返す
 *
 * マッチング戦略:
 * 1. トークン部分一致 × IDF重み（汎用ワードのスコアを下げる）
 * 2. バイグラム類似度（Dice係数）でファジーマッチ
 * 3. 両スコアを合算して上位 MAX_CANDIDATES 件を返す
 */

import { supabaseAdmin } from "@/lib/supabaseAdmin";

const MAX_CANDIDATES = 3;

// 汎用すぎるワードはマッチングから除外
const STOPWORDS = new Set([
  "シングルモルト", "ブレンデッド", "ウィスキー", "whiskey", "whisky",
  "single", "malt", "blended", "irish", "scotch", "bourbon", "japanese",
  "years", "year", "aged", "pure", "grain", "barrel", "cask", "reserve",
  "limited", "edition", "special", "ml", "700", "40", "43", "46", "48",
  "アイリッシュ", "スコッチ", "バーボン", "ジャパニーズ", "シングル",
  "モルト", "グレーン", "ピュア", "リザーブ", "スペシャル", "ピーテッド",
]);

// ---------- tokenize ----------
function tokenize(text: string): string[] {
  return text
    .split(/[\s\n\r\u3000・、。「」【】『』（）()\-\/\\|,.\d]+/)
    .map((t) => t.trim().toLowerCase())
    .filter((t) => t.length >= 2 && !STOPWORDS.has(t));
}

// ---------- bigram similarity (Dice) ----------
function bigrams(str: string): string[] {
  const s = str.toLowerCase().replace(/\s+/g, "");
  const result: string[] = [];
  for (let i = 0; i < s.length - 1; i++) {
    result.push(s.slice(i, i + 2));
  }
  return result;
}

function diceSimilarity(a: string, b: string): number {
  const bg1 = bigrams(a);
  const bg2 = new Set(bigrams(b));
  if (bg1.length === 0 || bg2.size === 0) return 0;
  const overlap = bg1.filter((bg) => bg2.has(bg)).length;
  return (2 * overlap) / (bg1.length + bg2.size);
}

function maxDice(bottleName: string, tokens: string[]): number {
  if (tokens.length === 0) return 0;
  return Math.max(...tokens.map((t) => diceSimilarity(bottleName, t)));
}

// ---------- IDF-weighted token score ----------
function buildIdf(names: string[]): Map<string, number> {
  const df = new Map<string, number>();
  for (const name of names) {
    const tokens = new Set(tokenize(name));
    for (const t of tokens) {
      df.set(t, (df.get(t) ?? 0) + 1);
    }
  }
  const N = names.length;
  const idf = new Map<string, number>();
  for (const [token, count] of df) {
    idf.set(token, Math.log((N + 1) / (count + 1)) + 1);
  }
  return idf;
}

function tokenScore(
  bottleName: string,
  tokens: string[],
  idf: Map<string, number>
): number {
  const lower = bottleName.toLowerCase();
  let s = 0;
  for (const token of tokens) {
    const weight = idf.get(token) ?? 1;
    if (lower.includes(token)) s += token.length * weight;
    if (token.includes(lower)) s += lower.length * 2 * weight;
  }
  return s;
}

// ---------- main ----------
export async function findCandidates(ocrText: string): Promise<string[]> {
  if (!ocrText.trim()) return [];

  const tokens = tokenize(ocrText);
  const effectiveTokens =
    tokens.length > 0 ? tokens : [ocrText.trim().toLowerCase()];

  // bottle_master から取得（失敗時は reviews にフォールバック）
  let names: string[] = [];

  const { data: masterData } = await supabaseAdmin
    .from("bottle_master")
    .select("name");

  if (masterData && masterData.length > 0) {
    names = masterData.map((r) => r.name as string);
  } else {
    const { data: reviewData } = await supabaseAdmin
      .from("reviews")
      .select("name");
    const unique = [
      ...new Set(
        (reviewData ?? []).map((r) => r.name as string).filter(Boolean)
      ),
    ];
    names = unique;
  }

  if (names.length === 0) return [];

  // IDF計算
  const idf = buildIdf(names);

  // スコアリング
  const scored = names
    .map((n) => {
      const ts = tokenScore(n, effectiveTokens, idf);
      const ds = maxDice(n, effectiveTokens);
      return { name: n, score: ts + ds * 10 };
    })
    .sort((a, b) => b.score - a.score)
    .slice(0, MAX_CANDIDATES)
    .map((x) => x.name);

  return scored;
}
