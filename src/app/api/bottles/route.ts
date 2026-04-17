import { NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export async function GET() {
  // reviews / bottle_master / bottle_info の全名称を統合して返す
  const [reviewsRes, masterRes, infoRes] = await Promise.all([
    supabaseAdmin.from("reviews").select("name"),
    supabaseAdmin.from("bottle_master").select("name, yomi, romaji"),
    supabaseAdmin.from("bottle_info").select("name"),
  ]);

  const allNames = new Set<string>();

  for (const r of reviewsRes.data ?? []) {
    if (r.name) allNames.add(r.name as string);
  }
  for (const r of infoRes.data ?? []) {
    if (r.name) allNames.add(r.name as string);
  }
  for (const r of masterRes.data ?? []) {
    if (r.name) allNames.add(r.name as string);
    // yomi（ひらがな）があれば候補に追加（入力補完用）
    if (r.yomi) allNames.add(r.yomi as string);
    // romaji があれば候補に追加
    if ((r as { romaji?: string }).romaji) allNames.add((r as { romaji: string }).romaji);
  }

  const names = [...allNames].filter(Boolean).sort();
  return NextResponse.json({ names });
}
