import { NextRequest, NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

export async function GET(
  _req: NextRequest,
  context: { params: Promise<{ name: string }> }
) {
  const { name } = await context.params;
  const decodedName = decodeURIComponent(name);

  const { data, error } = await supabaseAdmin
    .from("bottle_master")
    .select("name, category")
    .eq("name", decodedName)
    .maybeSingle();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ item: data });
}

export async function PUT(
  req: NextRequest,
  context: { params: Promise<{ name: string }> }
) {
  const { name } = await context.params;
  const decodedName = decodeURIComponent(name);

  const body = (await req.json()) as { category?: string };

  const { data, error } = await supabaseAdmin
    .from("bottle_master")
    .upsert(
      { name: decodedName, category: body.category ?? "" },
      { onConflict: "name" }
    )
    .select("name, category")
    .single();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ item: data });
}
