/**
 * OCRテキストと bottle_master テーブルを突き合わせて銘柄候補を返す
 *
 * マッチング戦略:
 * 1. トークン部分一致スコア（大文字小文字無視）
 * 2. バイグラム類似度（Dice係数）でファジーマッチ
 * 3. 両スコアを合算して上位 MAX_CANDIDATES 件を返す
 *    → スコア0でもバイグラム類似度が高ければ候補として浮上
 */

import { supabaseAdmin } from "@/lib/supabaseAdmin";

const MAX_CANDIDATES = 3;

// ---------- tokenize ----------
function tokenize(text: string): string[] {
  return text
    .split(/[\s\n\r\u3000・、。「」【】『』（）()\-\/\\|]+/)
    .map((t) => t.trim().toLowerCase())
    .filter((t) => t.length >= 2);
}

// ---------- token partial-match score ----------
function tokenScore(bottleName: string, tokens: string[]): number {
  const lower = bottleName.toLowerCase();
  let s = 0;
  for (const token of tokens) {
    if (lower.includes(token)) s += token.length;
    if (token.includes(lower)) s += lower.length * 2;
  }
  return s;
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

// OCRテキスト全体 vs 銘柄名 の最大バイグラム類似度（トークン単位で試して最大値）
function maxDice(bottleName: string, tokens: string[]): number {
  if (tokens.length === 0) return 0;
  return Math.max(...tokens.map((t) => diceSimilarity(bottleName, t)));
}

// ---------- main ----------
export async function findCandidates(ocrText: string): Promise<string[]> {
  if (!ocrText.trim()) return [];

  const tokens = tokenize(ocrText);
  // トークンが取れなくてもテキスト全体をフォールバックトークンとして使う
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

  // スコアリング: トークン一致 + バイグラム類似度を合算
  const scored = names
    .map((n) => {
      const ts = tokenScore(n, effectiveTokens);
      const ds = maxDice(n, effectiveTokens);
      // バイグラムは 0〜1 なので token スコアと重みを合わせるため ×10
      return { name: n, score: ts + ds * 10 };
    })
    .sort((a, b) => b.score - a.score)
    .slice(0, MAX_CANDIDATES)
    .map((x) => x.name);

  return scored;
}
