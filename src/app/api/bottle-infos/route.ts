import { NextRequest, NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

// bottle_master の英語カテゴリ → 日本語（ウィスキー用レガシーマップ）
const CATEGORY_MAP: Record<string, string> = {
  japanese: "ジャパニーズ(定番)",
  scotch: "スコッチ(シングルモルト)",
  bourbon: "バーボン",
  irish: "アイリッシュ",
  blended: "スコッチ(ブレンデッド)",
  canadian: "カナディアン",
  world: "ワールド",
};

export async function GET(req: NextRequest) {
  const drinkType = req.nextUrl.searchParams.get("drink_type") ?? "whisky";

  const [infosRes, mastersRes] = await Promise.all([
    supabaseAdmin.from("bottle_info").select("name, summary, hero_image_url, drink_type"),
    supabaseAdmin.from("bottle_master").select("name, category, drink_type"),
  ]);

  const masterMap = new Map(
    (mastersRes.data ?? []).map((m) => [m.name as string, m])
  );

  const allItems = (infosRes.data ?? []).map((info) => {
    const master = masterMap.get(info.name as string);
    const rawCat = master?.category as string | null;
    const category = rawCat ? (CATEGORY_MAP[rawCat] ?? rawCat) : null;
    return {
      name: info.name as string,
      summary: (info.summary as string) || "",
      hero_image_url: (info.hero_image_url as string) || "",
      category,
      drink_type: (() => {
        const raw = (info.drink_type as string) || (master?.drink_type as string) || "whisky";
        if (raw === "ウィスキー" || raw === "whiskey") return "whisky";
        if (raw === "日本酒") return "sake";
        return raw;
      })(),
    };
  });

  const items = allItems.filter((i) => i.drink_type === drinkType);

  return NextResponse.json({ items });
}
