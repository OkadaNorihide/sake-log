/**
 * OCRテキストと bottle_master テーブルを突き合わせて銘柄候補を返す
 *
 * マッチング戦略:
 * 1. OCRテキストをトークン分割（空白・改行・記号で区切る）
 * 2. 各 bottle_master.name について、トークンが名前に含まれるかスコアリング
 * 3. スコア上位 MAX_CANDIDATES 件を返す
 * 4. bottle_master が空の場合は reviews.name から動的にフォールバック
 */

import { supabaseAdmin } from "@/lib/supabaseAdmin";

const MAX_CANDIDATES = 5;

function tokenize(text: string): string[] {
  return text
    .split(/[\s\n\r\u3000・、。「」【】『』（）()\-\/\\|]+/)
    .map((t) => t.trim())
    .filter((t) => t.length >= 2); // 2文字以上のトークンのみ
}

function score(bottleName: string, tokens: string[]): number {
  let s = 0;
  for (const token of tokens) {
    if (bottleName.includes(token)) s += token.length; // 長いトークンほど高スコア
    if (token.includes(bottleName)) s += bottleName.length * 2; // 完全一致に近い場合ボーナス
  }
  return s;
}

export async function findCandidates(ocrText: string): Promise<string[]> {
  if (!ocrText.trim()) return [];

  const tokens = tokenize(ocrText);
  if (tokens.length === 0) return [];

  // bottle_master から取得（失敗時は reviews にフォールバック）
  let names: string[] = [];

  const { data: masterData } = await supabaseAdmin
    .from("bottle_master")
    .select("name");

  if (masterData && masterData.length > 0) {
    names = masterData.map((r) => r.name as string);
  } else {
    // マスタが空なら既存レビューの銘柄名を使う
    const { data: reviewData } = await supabaseAdmin
      .from("reviews")
      .select("name");
    const unique = [...new Set((reviewData ?? []).map((r) => r.name as string).filter(Boolean))];
    names = unique;
  }

  if (names.length === 0) return [];

  // スコアリングして上位を返す
  const scored = names
    .map((n) => ({ name: n, score: score(n, tokens) }))
    .filter((x) => x.score > 0)
    .sort((a, b) => b.score - a.score)
    .slice(0, MAX_CANDIDATES)
    .map((x) => x.name);

  return scored;
}
