import { NextRequest, NextResponse } from "next/server";
import { supabaseAdmin } from "@/lib/supabaseAdmin";

type CommentRow = {
  id: string;
  review_id: string;
  parent_id: string | null;
  author_name: string;
  body: string;
  created_at: string;
};

export async function GET(req: NextRequest) {
  try {
    const { searchParams } = new URL(req.url);
    const reviewId = searchParams.get("reviewId")?.trim();

    if (!reviewId) {
      return NextResponse.json({ error: "reviewId is required" }, { status: 400 });
    }

    const { data, error } = await supabaseAdmin
      .from("comments")
      .select("id, review_id, parent_id, author_name, body, created_at")
      .eq("review_id", reviewId)
      .order("created_at", { ascending: true });

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ items: (data ?? []) as CommentRow[] });
  } catch {
    return NextResponse.json({ error: "unexpected error" }, { status: 500 });
  }
}

export async function POST(req: NextRequest) {
  try {
    const body = (await req.json()) as {
      reviewId?: string;
      parentId?: string | null;
      authorName?: string;
      body?: string;
    };

    const reviewId = (body.reviewId ?? "").trim();
    const parentId = body.parentId ?? null;
    const authorName = (body.authorName ?? "匿名").trim() || "匿名";
    const text = (body.body ?? "").trim();

    if (!reviewId) return NextResponse.json({ error: "reviewId is required" }, { status: 400 });
    if (!text) return NextResponse.json({ error: "body is required" }, { status: 400 });
    if (text.length > 1000) return NextResponse.json({ error: "body too long" }, { status: 400 });

    const { data, error } = await supabaseAdmin
      .from("comments")
      .insert({
        review_id: reviewId,
        parent_id: parentId,
        author_name: authorName,
        body: text,
      })
      .select("id, review_id, parent_id, author_name, body, created_at")
      .single();

    if (error) {
      return NextResponse.json({ error: error.message }, { status: 500 });
    }

    return NextResponse.json({ item: data });
  } catch {
    return NextResponse.json({ error: "invalid json" }, { status: 400 });
  }
}