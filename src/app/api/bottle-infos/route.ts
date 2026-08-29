import { NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

// bottle_master の英語カテゴリ → 日本語
const CATEGORY_MAP: Record<string, string> = {
  japanese: "ジャパニーズ(定番)",
  scotch: "スコッチ(シングルモルト)",
  bourbon: "バーボン",
  irish: "アイリッシュ",
  blended: "スコッチ(ブレンデッド)",
  canadian: "カナディアン",
  world: "ワールド",
};

export async function GET() {
  const [infosRes, mastersRes] = await Promise.all([
    supabaseAdmin.from("bottle_info").select("name, summary, hero_image_url"),
    supabaseAdmin.from("bottle_master").select("name, category, drink_type"),
  ]);

  const masterMap = new Map(
    (mastersRes.data ?? []).map((m) => [m.name as string, m])
  );

  const items = (infosRes.data ?? []).map((info) => {
    const master = masterMap.get(info.name as string);
    return {
      name: info.name as string,
      summary: (info.summary as string) || "",
      hero_image_url: (info.hero_image_url as string) || "",
      category: master?.category ? (CATEGORY_MAP[master.category as string] ?? null) : null,
      drink_type: (master?.drink_type as string) || "ウィスキー",
    };
  });

  return NextResponse.json({ items });
}
