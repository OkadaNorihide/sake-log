import { NextRequest, NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export async function GET(req: NextRequest) {
  const drinkType = req.nextUrl.searchParams.get("drink_type") ?? "whisky";

  const [reviewsRes, masterRes, infoRes] = await Promise.all([
    supabaseAdmin.from("reviews").select("name, drink_type").eq("drink_type", drinkType),
    supabaseAdmin.from("bottle_master").select("name, name_en, yomi, romaji, drink_type"),
    supabaseAdmin.from("bottle_info").select("name, drink_type"),
  ]);

  const canonicalNames = new Set<string>();
  const aliasToCanonical = new Map<string, string>();

  for (const r of reviewsRes.data ?? []) {
    if (r.name) canonicalNames.add(r.name as string);
  }
  for (const r of infoRes.data ?? []) {
    if ((r.drink_type as string) === drinkType && r.name) canonicalNames.add(r.name as string);
  }
  for (const r of masterRes.data ?? []) {
    const name = r.name as string;
    if (!name) continue;
    const rawDt = (r.drink_type as string) || "whisky";
    const dt = rawDt === "ウィスキー" || rawDt === "whiskey" ? "whisky" : rawDt === "日本酒" ? "sake" : rawDt;
    if (dt !== drinkType) continue;
    canonicalNames.add(name);
    if (r.name_en) aliasToCanonical.set(r.name_en as string, name);
    if (r.yomi) aliasToCanonical.set(r.yomi as string, name);
    if ((r as { romaji?: string }).romaji) {
      aliasToCanonical.set((r as { romaji: string }).romaji, name);
    }
  }

  const names = [...canonicalNames].filter(Boolean).sort();
  const aliases = [...aliasToCanonical.entries()]
    .filter(([alias]) => !canonicalNames.has(alias))
    .map(([alias, canonical]) => ({ alias, canonical }));

  return NextResponse.json({ names, aliases });
}
