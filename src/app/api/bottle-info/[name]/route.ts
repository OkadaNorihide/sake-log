import { NextRequest, NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

type BottleInfoRow = {
  name: string;
  summary: string;
  amazon_url: string;
  rakuten_url: string;
  hero_image_url: string;
  updated_at: string;
};

export async function GET(
  _req: NextRequest,
  context: { params: Promise<{ name: string }> }
) {
  const { name } = await context.params;
  const decodedName = decodeURIComponent(name);

  const { data, error } = await supabaseAdmin
    .from("bottle_info")
    .select("name, summary, amazon_url, rakuten_url, hero_image_url, updated_at")
    .eq("name", decodedName)
    .maybeSingle();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ item: data as BottleInfoRow | null });
}

export async function PUT(
  req: NextRequest,
  context: { params: Promise<{ name: string }> }
) {
  const { name } = await context.params;
  const decodedName = decodeURIComponent(name);

  const body = (await req.json()) as {
    summary?: string;
    amazon_url?: string;
    rakuten_url?: string;
    hero_image_url?: string;
  };

  const { data, error } = await supabaseAdmin
    .from("bottle_info")
    .upsert(
      {
        name: decodedName,
        summary: (body.summary ?? "").trim(),
        amazon_url: (body.amazon_url ?? "").trim(),
        rakuten_url: (body.rakuten_url ?? "").trim(),
        hero_image_url: (body.hero_image_url ?? "").trim(),
        updated_at: new Date().toISOString(),
      },
      { onConflict: "name" }
    )
    .select("name, summary, amazon_url, rakuten_url, hero_image_url, updated_at")
    .single();

  if (error) {
    return NextResponse.json({ error: error.message }, { status: 500 });
  }

  return NextResponse.json({ item: data as BottleInfoRow });
}
