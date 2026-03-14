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
};

export async function GET(
  _req: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await context.params;

    if (!id) {
      return NextResponse.json({ error: "id is required" }, { status: 400 });
    }

    const { data, error } = await supabaseAdmin
      .from("reviews")
      .select("id, name, rating, tastes, scenes, memo, images, created_at")
      .eq("id", id)
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 404 });
    }

    return NextResponse.json({ item: data as ReviewRow });
  } catch {
    return NextResponse.json({ error: "unexpected error" }, { status: 500 });
  }
}