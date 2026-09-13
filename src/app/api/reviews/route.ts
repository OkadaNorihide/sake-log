import { NextRequest, NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

type ReviewRow = {
  id: string;
  name: string;
  rating: number;
  tastes: string[];
  scenes: string[];
  memo: string;
  images: string[];
  category: string;
  drink_type: string;
  created_at: string;
  likes_count: number;
};

export async function GET(req: NextRequest) {
  try {
    const drinkType = req.nextUrl.searchParams.get("drink_type") ?? "whisky";

    const { data, error } = await supabaseAdmin
      .from("reviews")
      .select("id, name, rating, tastes, scenes, memo, images, category, drink_type, created_at, likes_count")
      .eq("drink_type", drinkType)
      .order("created_at", { ascending: false });

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ items: (data ?? []) as ReviewRow[] });
  } catch {
    return NextResponse.json({ error: "unexpected error" }, { status: 500 });
  }
}

export async function POST(req: NextRequest) {
  try {
    const body = (await req.json()) as {
      name?: string;
      rating?: number;
      tastes?: string[];
      scenes?: string[];
      memo?: string;
      images?: string[];
      category?: string;
      drink_type?: string;
    };

    const name = (body.name ?? "").trim();
    const rating = Number(body.rating ?? 0);
    const tastes = Array.isArray(body.tastes) ? body.tastes : [];
    const scenes = Array.isArray(body.scenes) ? body.scenes : [];
    const memo = (body.memo ?? "").trim();
    const images = Array.isArray(body.images) ? body.images : [];
    const category = (body.category ?? "不明").trim();
    const drink_type = (body.drink_type ?? "whisky").trim();

    if (!name) {
      return NextResponse.json({ error: "name is required" }, { status: 400 });
    }

    if (!rating || rating < 1 || rating > 5) {
      return NextResponse.json({ error: "rating is invalid" }, { status: 400 });
    }

    const { data, error } = await supabaseAdmin
      .from("reviews")
      .insert({ name, rating, tastes, scenes, memo, images, category, drink_type })
      .select("id, name, rating, tastes, scenes, memo, images, category, drink_type, created_at, likes_count")
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    // bottle_master に銘柄名を自動登録
    await supabaseAdmin
      .from("bottle_master")
      .upsert({ name, drink_type }, { onConflict: "name", ignoreDuplicates: true });

    return NextResponse.json({ item: data as ReviewRow });
  } catch {
    return NextResponse.json({ error: "invalid json" }, { status: 400 });
  }
}
