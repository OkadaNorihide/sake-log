"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";
import { useParams, useRouter } from "next/navigation";

type Review = {
  id: string;
  name: string;
  rating: number;
  tastes: string[];
  scenes: string[];
  memo: string;
  images?: string[];
  created_at: string;
};

type CommentItem = {
  id: string;
  review_id: string;
  parent_id: string | null;
  author_name: string;
  body: string;
  created_at: string;
};

/* -----------------------------
   Cloudinary変換（HEIC対応）
------------------------------ */
function cloudinaryTransform(url: string, transform: string) {
  if (!url?.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", `/upload/${transform}/`);
}
function toPreviewUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_limit,w_1200");
}

export default function ReviewDetailPage() {
  const router = useRouter();
  const params = useParams<{ id: string }>();
  const id = typeof params?.id === "string" ? params.id : "";

  const [review, setReview] = useState<Review | null>(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchReview = async () => {
      if (!id) {
        setLoading(false);
        return;
      }

      setLoading(true);
      try {
        const res = await fetch(`/api/reviews/${encodeURIComponent(id)}`, {
          cache: "no-store",
        });
        const json = (await res.json()) as { item?: Review; error?: string };
        if (!res.ok) throw new Error(json.error || "failed");
        setReview(json.item ?? null);
      } catch {
        setReview(null);
      } finally {
        setLoading(false);
      }
    };

    fetchReview();
  }, [id]);

  if (!id) {
    return (
      <div className="p-6 max-w-2xl mx-auto space-y-4">
        <div className="rounded-lg border p-6">IDが取得できませんでした</div>
        <Link href="/" className="underline text-sm">
          一覧へ戻る
        </Link>
      </div>
    );
  }

  if (loading) {
    return (
      <div className="p-6 max-w-2xl mx-auto space-y-4">
        <header className="flex items-center justify-between">
          <h1 className="text-xl font-bold">レビュー詳細</h1>
          <Link href="/" className="text-sm underline text-gray-600">
            一覧へ戻る
          </Link>
        </header>
        <div className="rounded-lg border p-6 text-sm text-gray-700">
          読み込み中...
        </div>
      </div>
    );
  }

  if (!review) {
    return (
      <div className="p-6 max-w-2xl mx-auto space-y-4">
        <header className="flex items-center justify-between">
          <h1 className="text-xl font-bold">レビュー詳細</h1>
          <Link href="/" className="text-sm underline text-gray-600">
            一覧へ戻る
          </Link>
        </header>
        <div className="rounded-lg border p-6 text-sm text-gray-700">
          このレビューが見つかりませんでした。
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 max-w-2xl mx-auto space-y-6">
      <header className="flex items-center justify-between">
        <h1 className="text-xl font-bold">レビュー詳細</h1>
        <Link href="/" className="text-sm underline text-gray-600">
          一覧へ戻る
        </Link>
      </header>

      <div className="rounded-lg border p-6 space-y-4 bg-white/80">
        <div className="flex items-start justify-between gap-4">
          <div>
            <div className="text-2xl font-bold">{review.name}</div>
            <div className="text-xs text-gray-500">
              登録日時：{new Date(review.created_at).toLocaleString("ja-JP")}
            </div>
          </div>

          <div className="text-lg text-gray-700">
            {"★".repeat(review.rating)}
            <span className="text-gray-300">
              {"★".repeat(Math.max(0, 5 - review.rating))}
            </span>
          </div>
        </div>

        {(review.tastes.length > 0 || review.scenes.length > 0) && (
          <div className="flex flex-wrap gap-2">
            {review.tastes.map((t) => (
              <span key={t} className="text-xs border rounded-full px-2 py-1 bg-white/70">
                #{t}
              </span>
            ))}
            {review.scenes.map((s) => (
              <span key={s} className="text-xs border rounded-full px-2 py-1 bg-white/70">
                #{s}
              </span>
            ))}
          </div>
        )}

        {Array.isArray(review.images) && review.images.length > 0 && (
          <div className="space-y-2">
            <div className="text-sm font-medium">写真</div>
            <div className="grid grid-cols-3 gap-2">
              {review.images.slice(0, 3).map((src, idx) => (
                <img
                  key={idx}
                  src={toPreviewUrl(src)}
                  alt={`image-${idx}`}
                  className="w-full aspect-square object-cover rounded border bg-gray-50"
                />
              ))}
            </div>
          </div>
        )}

        <div className="space-y-1">
          <div className="text-sm font-medium">メモ</div>
          <p className="text-sm text-gray-700 whitespace-pre-wrap">
            {review.memo?.trim() ? review.memo : "（なし）"}
          </p>
        </div>
      </div>

      <div className="flex gap-3">
        <Link
          href={`/bottle/${encodeURIComponent(review.name)}`}
          className="w-1/2 border rounded px-4 py-2 text-center bg-white/80"
        >
          銘柄ページへ
        </Link>
        <button
          onClick={() => alert("削除機能はあとでSupabase対応します")}
          className="w-1/2 bg-red-600 text-white rounded px-4 py-2"
        >
          削除する
        </button>
      </div>

      <CommentsSection reviewId={review.id} />
    </div>
  );
}

/* -----------------------------
   Comments UI (anonymous + reply)
------------------------------ */

function formatJa(dt: string) {
  try {
    return new Date(dt).toLocaleString("ja-JP");
  } catch {
    return dt;
  }
}

function CommentsSection({ reviewId }: { reviewId: string }) {
  const [items, setItems] = useState<CommentItem[]>([]);
  const [loading, setLoading] = useState(true);

  const [authorName, setAuthorName] = useState("匿名");
  const [body, setBody] = useState("");

  const [replyTo, setReplyTo] = useState<string | null>(null);
  const [replyBody, setReplyBody] = useState("");

  const parents = useMemo(() => items.filter((c) => c.parent_id === null), [items]);

  const childrenByParent = useMemo(() => {
    const m = new Map<string, CommentItem[]>();
    for (const c of items) {
      if (!c.parent_id) continue;
      const arr = m.get(c.parent_id) ?? [];
      arr.push(c);
      m.set(c.parent_id, arr);
    }
    return m;
  }, [items]);

  const fetchComments = async () => {
    setLoading(true);
    try {
      const res = await fetch(`/api/comments?reviewId=${encodeURIComponent(reviewId)}`, {
        cache: "no-store",
      });
      const json = (await res.json()) as { items?: CommentItem[]; error?: string };
      if (!res.ok) throw new Error(json.error || "failed");
      setItems(Array.isArray(json.items) ? json.items : []);
    } catch {
      setItems([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchComments();
  }, [reviewId]);

  const postComment = async (payload: { parentId?: string | null; body: string }) => {
    const res = await fetch("/api/comments", {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
      },
      body: JSON.stringify({
        reviewId,
        parentId: payload.parentId ?? null,
        authorName,
        body: payload.body,
      }),
    });

    const json = (await res.json()) as { item?: CommentItem; error?: string };
    if (!res.ok) throw new Error(json.error || "failed");
    return json.item;
  };

  const onSubmit = async () => {
    const text = body.trim();
    if (!text) return;

    try {
      await postComment({ body: text });
      setBody("");
      await fetchComments();
    } catch {
      alert("コメントの投稿に失敗しました。時間をおいて再試行してください。");
    }
  };

  const onSubmitReply = async (parentId: string) => {
    const text = replyBody.trim();
    if (!text) return;

    try {
      await postComment({ parentId, body: text });
      setReplyBody("");
      setReplyTo(null);
      await fetchComments();
    } catch {
      alert("返信の投稿に失敗しました。時間をおいて再試行してください。");
    }
  };

  return (
    <div className="rounded-lg border p-6 space-y-4 bg-white/80">
      <div className="flex items-center justify-between">
        <h2 className="text-lg font-semibold">コメント</h2>
        <button onClick={fetchComments} className="text-sm underline text-gray-600">
          更新
        </button>
      </div>

      <div className="space-y-2">
        <div className="flex flex-col sm:flex-row gap-2">
          <input
            className="border rounded px-3 py-2 sm:w-56 text-black"
            placeholder="名前（任意）"
            value={authorName}
            onChange={(e) => setAuthorName(e.target.value)}
          />
          <div className="flex-1" />
        </div>

        <textarea
          className="w-full border rounded px-3 py-2 min-h-[88px] text-black"
          placeholder="コメントを書く"
          value={body}
          onChange={(e) => setBody(e.target.value)}
        />

        <button
          onClick={onSubmit}
          className="bg-black text-white rounded px-4 py-2 disabled:opacity-50"
          disabled={!body.trim()}
        >
          コメントする
        </button>
      </div>

      {loading ? (
        <div className="text-sm text-gray-600">読み込み中…</div>
      ) : parents.length === 0 ? (
        <div className="text-sm text-gray-600">まだコメントがありません。</div>
      ) : (
        <div className="space-y-4">
          {parents.map((p) => {
            const kids = childrenByParent.get(p.id) ?? [];
            return (
              <div key={p.id} className="border rounded-lg p-4 space-y-3 bg-white">
                <div className="flex items-center justify-between gap-3">
                  <div className="text-sm font-medium text-gray-800">
                    {p.author_name || "匿名"}
                    <span className="ml-2 text-xs text-gray-500">{formatJa(p.created_at)}</span>
                  </div>

                  <button
                    className="text-sm underline text-gray-600"
                    onClick={() => {
                      setReplyTo((cur) => (cur === p.id ? null : p.id));
                      setReplyBody("");
                    }}
                  >
                    返信
                  </button>
                </div>

                <p className="text-sm text-gray-800 whitespace-pre-wrap">{p.body}</p>

                {replyTo === p.id && (
                  <div className="space-y-2 border-t pt-3">
                    <textarea
                      className="w-full border rounded px-3 py-2 min-h-[72px] text-black"
                      placeholder="返信を書く"
                      value={replyBody}
                      onChange={(e) => setReplyBody(e.target.value)}
                    />
                    <div className="flex gap-2">
                      <button
                        className="bg-black text-white rounded px-4 py-2 disabled:opacity-50"
                        disabled={!replyBody.trim()}
                        onClick={() => onSubmitReply(p.id)}
                      >
                        返信する
                      </button>
                      <button
                        className="border rounded px-4 py-2"
                        onClick={() => {
                          setReplyTo(null);
                          setReplyBody("");
                        }}
                      >
                        キャンセル
                      </button>
                    </div>
                  </div>
                )}

                {kids.length > 0 && (
                  <div className="space-y-3 border-t pt-3">
                    {kids.map((c) => (
                      <div key={c.id} className="rounded-md bg-gray-50 p-3">
                        <div className="text-xs text-gray-600">
                          <span className="font-medium">{c.author_name || "匿名"}</span>
                          <span className="ml-2">{formatJa(c.created_at)}</span>
                        </div>
                        <p className="text-sm text-gray-800 whitespace-pre-wrap mt-1">{c.body}</p>
                      </div>
                    ))}
                  </div>
                )}
              </div>
            );
          })}
        </div>
      )}
    </div>
  );
}