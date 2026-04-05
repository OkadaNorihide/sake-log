import { NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export async function GET() {
  const { data, error } = await supabaseAdmin
    .from("reviews")
    .select("name")
    .order("name");

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  const names = [...new Set((data ?? []).map((r) => r.name as string).filter(Boolean))].sort();
  return NextResponse.json({ names });
}
