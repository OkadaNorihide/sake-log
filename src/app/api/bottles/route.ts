import { NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export async function GET() {
  const [reviewsRes, masterRes, infoRes] = await Promise.all([
    supabaseAdmin.from("reviews").select("name"),
    supabaseAdmin.from("bottle_master").select("name, name_en, yomi, romaji"),
    supabaseAdmin.from("bottle_info").select("name"),
  ]);

  // 正規名（表示・登録に使う）のセット
  const canonicalNames = new Set<string>();
  // 検索補助用エイリアス（ひらがな・ローマ字）→正規名へのマッピング
  const aliasToCanonical = new Map<string, string>();

  for (const r of reviewsRes.data ?? []) {
    if (r.name) canonicalNames.add(r.name as string);
  }
  for (const r of infoRes.data ?? []) {
    if (r.name) canonicalNames.add(r.name as string);
  }
  for (const r of masterRes.data ?? []) {
    const name = r.name as string;
    if (!name) continue;
    canonicalNames.add(name);
    // エイリアスは正規名へのマッピングとして保持
    if (r.name_en) aliasToCanonical.set(r.name_en as string, name);
    if (r.yomi) aliasToCanonical.set(r.yomi as string, name);
    if ((r as { romaji?: string }).romaji) {
      aliasToCanonical.set((r as { romaji: string }).romaji, name);
    }
  }

  // 正規名のリスト（ソート済み）
  const names = [...canonicalNames].filter(Boolean).sort();
  // エイリアスリスト（正規名と重複しないもの）
  const aliases = [...aliasToCanonical.entries()]
    .filter(([alias]) => !canonicalNames.has(alias))
    .map(([alias, canonical]) => ({ alias, canonical }));

  return NextResponse.json({ names, aliases });
}
