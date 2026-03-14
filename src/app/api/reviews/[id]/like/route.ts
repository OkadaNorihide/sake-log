import { NextRequest, NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export async function POST(
  _req: NextRequest,
  context: { params: Promise<{ id: string }> }
) {
  try {
    const { id } = await context.params;

    if (!id) {
      return NextResponse.json({ error: "id is required" }, { status: 400 });
    }

    const { data: current, error: fetchError } = await supabaseAdmin
      .from("reviews")
      .select("id, likes_count")
      .eq("id", id)
      .single();

    if (fetchError || !current) {
      return NextResponse.json({ error: "review not found" }, { status: 404 });
    }

    const nextCount = (current.likes_count ?? 0) + 1;

    const { data, error } = await supabaseAdmin
      .from("reviews")
      .update({ likes_count: nextCount })
      .eq("id", id)
      .select("likes_count")
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ likes_count: data.likes_count });
  } catch {
    return NextResponse.json({ error: "unexpected error" }, { status: 500 });
  }
}