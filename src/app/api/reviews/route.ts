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
  created_at: string;
  likes_count: number;
};

export async function GET() {
  try {
    const { data, error } = await supabaseAdmin
      .from("reviews")
      .select("id, name, rating, tastes, scenes, memo, images, created_at, likes_count")
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
    };

    const name = (body.name ?? "").trim();
    const rating = Number(body.rating ?? 0);
    const tastes = Array.isArray(body.tastes) ? body.tastes : [];
    const scenes = Array.isArray(body.scenes) ? body.scenes : [];
    const memo = (body.memo ?? "").trim();
    const images = Array.isArray(body.images) ? body.images : [];

    if (!name) {
      return NextResponse.json({ error: "name is required" }, { status: 400 });
    }

    if (!rating || rating < 1 || rating > 5) {
      return NextResponse.json({ error: "rating is invalid" }, { status: 400 });
    }

    const { data, error } = await supabaseAdmin
      .from("reviews")
      .insert({
        name,
        rating,
        tastes,
        scenes,
        memo,
        images,
      })
      .select("id, name, rating, tastes, scenes, memo, images, created_at, likes_count")
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ item: data as ReviewRow });
  } catch {
    return NextResponse.json({ error: "invalid json" }, { status: 400 });
  }
}
export async function DELETE(
  _req: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await context.params;

    if (!id) {
      return NextResponse.json({ error: "id is required" }, { status: 400 });
    }

    const { error } = await supabaseAdmin
      .from("reviews")
      .delete()
      .eq("id", id);

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ ok: true });
  } catch {
    return NextResponse.json({ error: "unexpected error" }, { status: 500 });
  }
}