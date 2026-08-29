"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";
import { useParams } from "next/navigation";

const TASTES = ["ピート / スモーキー", "フルーティ", "シェリー", "バニラ", "スパイシー", "ライト", "甘い"];
const SCENES = ["家飲み", "バー", "居酒屋", "贈答", "特別な日"];
const CATEGORIES = ["スコッチ(シングルモルト)", "スコッチ(ブレンデッド)", "ジャパニーズ(定番)", "ジャパニーズ(クラフト)", "バーボン", "アイリッシュ", "カナディアン", "ワールド", "その他", "不明"];

type Review = {
  id: string;
  name: string;
  rating: number;
  tastes: string[];
  scenes: string[];
  memo: string;
  images?: string[];
  category: string;
  created_at: string;
  likes_count?: number;
};

type CommentItem = {
  id: string;
  review_id: string;
  parent_id: string | null;
  author_name: string;
  body: string;
  created_at: string;
};

function cloudinaryTransform(url: string, transform: string) {
  if (!url?.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", `/upload/${transform}/`);
}
function toPreviewUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_limit,w_1200");
}
function toThumbUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_fill,w_200,h_200");
}

async function uploadImage(file: File): Promise<string> {
  const res = await fetch("/api/cloudinary/sign", { cache: "no-store" });
  if (!res.ok) throw new Error("署名取得失敗");
  const { cloudName, apiKey, timestamp, signature, folder } = await res.json();
  const form = new FormData();
  form.append("file", file);
  form.append("api_key", apiKey);
  form.append("timestamp", String(timestamp));
  form.append("signature", signature);
  if (folder) form.append("folder", folder);
  const up = await fetch(`https://api.cloudinary.com/v1_1/${cloudName}/image/upload`, { method: "POST", body: form });
  const json = await up.json();
  if (!up.ok) throw new Error(json?.error?.message || "アップロード失敗");
  return json.secure_url as string;
}

function toggle(value: string, list: string[]): string[] {
  return list.includes(value) ? list.filter((v) => v !== value) : [...list, value];
}

/* ----------------------------------------
   メインページ
---------------------------------------- */
export default function ReviewDetailPage() {
  const params = useParams<{ id: string }>();
  const id = typeof params?.id === "string" ? params.id : "";

  const [review, setReview] = useState<Review | null>(null);
  const [loading, setLoading] = useState(true);
  const [editing, setEditing] = useState(false);

  // 編集用ドラフト
  const [draftRating, setDraftRating] = useState(0);
  const [draftCategory, setDraftCategory] = useState("不明");
  const [draftTastes, setDraftTastes] = useState<string[]>([]);
  const [draftScenes, setDraftScenes] = useState<string[]>([]);
  const [draftMemo, setDraftMemo] = useState("");
  const [draftImages, setDraftImages] = useState<string[]>([]);
  const [uploading, setUploading] = useState(false);
  const [uploadError, setUploadError] = useState("");
  const [saving, setSaving] = useState(false);

  useEffect(() => {
    if (!id) { setLoading(false); return; }
    setLoading(true);
    fetch(`/api/reviews/${encodeURIComponent(id)}`, { cache: "no-store" })
      .then((r) => r.json())
      .then((j: { item?: Review; error?: string }) => setReview(j.item ?? null))
      .catch(() => setReview(null))
      .finally(() => setLoading(false));
  }, [id]);

  const startEdit = () => {
    if (!review) return;
    setDraftRating(review.rating);
    setDraftCategory(review.category ?? "不明");
    setDraftTastes([...(review.tastes ?? [])]);
    setDraftScenes([...(review.scenes ?? [])]);
    setDraftMemo(review.memo ?? "");
    setDraftImages([...(review.images ?? [])]);
    setUploadError("");
    setEditing(true);
  };

  const handleImageAdd = async (files: FileList | null) => {
    if (!files || files.length === 0) return;
    const remaining = 3 - draftImages.length;
    if (remaining <= 0) return;
    setUploadError("");
    setUploading(true);
    try {
      const urls: string[] = [];
      for (const f of Array.from(files).slice(0, remaining)) {
        urls.push(await uploadImage(f));
      }
      setDraftImages((prev) => [...prev, ...urls]);
    } catch (e: unknown) {
      setUploadError(e instanceof Error ? e.message : "アップロード失敗");
    } finally {
      setUploading(false);
    }
  };

  const saveEdit = async () => {
    if (!review) return;
    setSaving(true);
    try {
      const res = await fetch(`/api/reviews/${encodeURIComponent(review.id)}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          rating: draftRating,
          category: draftCategory,
          tastes: draftTastes,
          scenes: draftScenes,
          memo: draftMemo.trim(),
          images: draftImages,
        }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error || "failed");
      setReview(json.item);
      setEditing(false);
    } catch (e: unknown) {
      alert(`保存失敗: ${e instanceof Error ? e.message : "unknown"}`);
    } finally {
      setSaving(false);
    }
  };

  if (!id) {
    return (
      <div className="p-6 max-w-2xl mx-auto space-y-4">
        <div className="rounded-lg border p-6">IDが取得できませんでした</div>
        <Link href="/" className="underline text-sm">一覧へ戻る</Link>
      </div>
    );
  }

  return (
    <div className="relative min-h-screen text-white">
      <div className="absolute inset-0 bg-cover" style={{ backgroundImage: "url('/review-bg.jpg')", backgroundPosition: "center 75%" }} />
      <div className="absolute inset-0 bg-black/70" />

      <div className="relative z-10 p-6 max-w-2xl mx-auto space-y-6">
        <header className="flex items-center justify-between">
          <h1 className="text-xl font-bold">レビュー詳細</h1>
          <Link href="/" className="text-sm underline text-white/80">一覧へ戻る</Link>
        </header>

        {loading ? (
          <div className="rounded-lg border border-white/20 bg-white/10 backdrop-blur-md p-6 text-sm text-white/80">読み込み中...</div>
        ) : !review ? (
          <div className="rounded-lg border border-white/20 bg-white/10 backdrop-blur-md p-6 text-sm text-white/80">このレビューが見つかりませんでした。</div>
        ) : editing ? (
          /* ---- 編集モード ---- */
          <div className="rounded-2xl border border-white/20 bg-white/10 backdrop-blur-md p-6 space-y-5 shadow-xl">
            <h2 className="text-base font-semibold">レビューを編集</h2>

            {/* 評価 */}
            <div className="space-y-2">
              <label className="text-xs text-white/60">評価</label>
              <div className="flex gap-1 text-3xl">
                {[1, 2, 3, 4, 5].map((i) => (
                  <button key={i} type="button" onClick={() => setDraftRating(i)} className={i <= draftRating ? "text-yellow-400" : "text-white/20"}>★</button>
                ))}
              </div>
            </div>

            {/* カテゴリ */}
            <div className="space-y-2">
              <label className="text-xs text-white/60">カテゴリ</label>
              <div className="flex flex-wrap gap-2">
                {CATEGORIES.map((c) => (
                  <button key={c} type="button" onClick={() => setDraftCategory(c)}
                    className={`px-3 py-1 border rounded-full text-sm transition ${draftCategory === c ? "bg-amber-400 text-black border-amber-400" : "border-white/30 hover:bg-white/10"}`}>
                    {c}
                  </button>
                ))}
              </div>
            </div>

            {/* 味わい */}
            <div className="space-y-2">
              <label className="text-xs text-white/60">味わい</label>
              <div className="flex flex-wrap gap-2">
                {TASTES.map((t) => (
                  <button key={t} type="button" onClick={() => setDraftTastes(toggle(t, draftTastes))}
                    className={`px-3 py-1 border rounded-full text-sm transition ${draftTastes.includes(t) ? "bg-white text-black border-white" : "border-white/30 hover:bg-white/10"}`}>
                    #{t}
                  </button>
                ))}
              </div>
            </div>

            {/* シーン */}
            <div className="space-y-2">
              <label className="text-xs text-white/60">シーン</label>
              <div className="flex flex-wrap gap-2">
                {SCENES.map((s) => (
                  <button key={s} type="button" onClick={() => setDraftScenes(toggle(s, draftScenes))}
                    className={`px-3 py-1 border rounded-full text-sm transition ${draftScenes.includes(s) ? "bg-white text-black border-white" : "border-white/30 hover:bg-white/10"}`}>
                    #{s}
                  </button>
                ))}
              </div>
            </div>

            {/* 写真 */}
            <div className="space-y-2">
              <label className="text-xs text-white/60">写真（最大3枚）</label>
              {draftImages.length > 0 && (
                <div className="flex gap-2 flex-wrap">
                  {draftImages.map((src, idx) => (
                    <div key={idx} className="relative">
                      <img src={toThumbUrl(src)} className="h-20 w-20 object-cover rounded-xl border border-white/20" alt={`img-${idx}`} />
                      <button type="button" onClick={() => setDraftImages((prev) => prev.filter((_, i) => i !== idx))}
                        className="absolute -top-1 -right-1 bg-black/70 text-white rounded-full w-5 h-5 text-xs flex items-center justify-center hover:bg-red-600 transition">
                        ×
                      </button>
                    </div>
                  ))}
                </div>
              )}
              {draftImages.length < 3 && (
                <label className={`inline-flex items-center gap-2 px-4 py-2 border border-white/30 rounded-lg text-sm cursor-pointer hover:bg-white/10 transition ${uploading ? "opacity-50 pointer-events-none" : ""}`}>
                  {uploading ? <><span className="animate-spin inline-block">⟳</span> アップロード中...</> : <>＋ 写真を追加</>}
                  <input type="file" multiple accept="image/*" className="hidden" disabled={uploading} onChange={(e) => handleImageAdd(e.target.files)} />
                </label>
              )}
              {uploadError && <p className="text-xs text-red-400">{uploadError}</p>}
            </div>

            {/* メモ */}
            <div className="space-y-2">
              <label className="text-xs text-white/60">メモ</label>
              <textarea
                className="w-full bg-white/10 border border-white/20 rounded-lg p-3 text-sm text-white placeholder-white/40 outline-none focus:ring-2 focus:ring-white/30 resize-none"
                rows={4}
                value={draftMemo}
                onChange={(e) => setDraftMemo(e.target.value)}
              />
            </div>

            <div className="flex gap-3 pt-1">
              <button onClick={saveEdit} disabled={saving || uploading || draftRating === 0}
                className="flex-1 bg-white text-black rounded-lg py-2 text-sm font-medium hover:bg-gray-100 transition disabled:opacity-50">
                {saving ? "保存中..." : "保存する"}
              </button>
              <button onClick={() => setEditing(false)} disabled={saving}
                className="flex-1 border border-white/30 rounded-lg py-2 text-sm hover:bg-white/10 transition">
                キャンセル
              </button>
            </div>
          </div>
        ) : (
          /* ---- 表示モード ---- */
          <>
            <div className="rounded-2xl border border-white/20 bg-white/10 backdrop-blur-md p-6 space-y-4 shadow-xl">
              <div className="flex items-start justify-between gap-4">
                <div className="space-y-1">
                  <div className="text-2xl font-bold">{review.name}</div>
                  <div className="flex items-center gap-2">
                    {review.category && review.category !== "不明" && (
                      <span className="text-xs bg-amber-400/20 text-amber-300 border border-amber-400/30 px-2 py-0.5 rounded-full">
                        {review.category}
                      </span>
                    )}
                    <div className="text-xs text-white/70">登録日時：{new Date(review.created_at).toLocaleString("ja-JP")}</div>
                  </div>
                </div>
                <div className="text-lg text-white">
                  {"★".repeat(review.rating)}<span className="text-white/30">{"★".repeat(Math.max(0, 5 - review.rating))}</span>
                </div>
              </div>

              {(review.tastes.length > 0 || review.scenes.length > 0) && (
                <div className="flex flex-wrap gap-2">
                  {review.tastes.map((t) => <span key={t} className="text-xs rounded-full px-2 py-1 border border-white/20 bg-white/10">#{t}</span>)}
                  {review.scenes.map((s) => <span key={s} className="text-xs rounded-full px-2 py-1 border border-white/20 bg-white/10">#{s}</span>)}
                </div>
              )}

              {Array.isArray(review.images) && review.images.length > 0 && (
                <div className="space-y-2">
                  <div className="text-sm font-medium">写真</div>
                  <div className="grid grid-cols-3 gap-2">
                    {review.images.slice(0, 3).map((src, idx) => (
                      <img key={idx} src={toPreviewUrl(src)} alt={`image-${idx}`} className="w-full aspect-square object-cover rounded border border-white/20 bg-white/10" />
                    ))}
                  </div>
                </div>
              )}

              <div className="space-y-1">
                <div className="text-sm font-medium">メモ</div>
                <p className="text-sm text-white/85 whitespace-pre-wrap">{review.memo?.trim() ? review.memo : "（なし）"}</p>
              </div>

              <div className="pt-2">
                <LikeButton reviewId={review.id} initialCount={review.likes_count ?? 0} />
              </div>
            </div>

            <div className="flex gap-3">
              <Link href={`/bottle/${encodeURIComponent(review.name)}`} className="w-1/3 rounded-lg px-4 py-2 text-center bg-white text-black text-sm font-medium">
                銘柄ページへ
              </Link>
              <button onClick={startEdit} className="w-1/3 rounded-lg px-4 py-2 bg-white/20 border border-white/30 text-white text-sm hover:bg-white/30 transition">
                編集する
              </button>
              <button
                onClick={async () => {
                  if (!confirm("このレビューを削除しますか？")) return;
                  try {
                    const res = await fetch(`/api/reviews/${review.id}`, { method: "DELETE" });
                    const json = await res.json();
                    if (!res.ok) throw new Error(json.error || "delete failed");
                    alert("削除しました");
                    window.location.href = "/";
                  } catch {
                    alert("削除に失敗しました");
                  }
                }}
                className="w-1/3 bg-red-600 text-white rounded-lg px-4 py-2 text-sm"
              >
                削除する
              </button>
            </div>

            <CommentsSection reviewId={review.id} />
          </>
        )}
      </div>
    </div>
  );
}

/* ----------------------------------------
   Like button
---------------------------------------- */
function LikeButton({ reviewId, initialCount }: { reviewId: string; initialCount: number }) {
  const [count, setCount] = useState(initialCount);
  const [loading, setLoading] = useState(false);

  const onLike = async () => {
    if (loading) return;
    setLoading(true);
    try {
      const res = await fetch(`/api/reviews/${encodeURIComponent(reviewId)}/like`, { method: "POST" });
      const json = (await res.json()) as { likes_count?: number; error?: string };
      if (!res.ok) throw new Error(json.error || "failed");
      setCount(json.likes_count ?? count + 1);
    } catch {
      alert("いいねに失敗しました。時間をおいて再試行してください。");
    } finally {
      setLoading(false);
    }
  };

  return (
    <button onClick={onLike} disabled={loading}
      className="inline-flex items-center gap-2 rounded-full border border-white/20 bg-white/10 px-4 py-2 text-sm hover:bg-white/20 disabled:opacity-50">
      <span>♡</span><span>いいね</span><span className="text-white/70">{count}</span>
    </button>
  );
}

/* ----------------------------------------
   Comments
---------------------------------------- */
function formatJa(dt: string) {
  try { return new Date(dt).toLocaleString("ja-JP"); } catch { return dt; }
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
      const res = await fetch(`/api/comments?reviewId=${encodeURIComponent(reviewId)}`, { cache: "no-store" });
      const json = (await res.json()) as { items?: CommentItem[]; error?: string };
      if (!res.ok) throw new Error(json.error || "failed");
      setItems(Array.isArray(json.items) ? json.items : []);
    } catch {
      setItems([]);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => { fetchComments(); }, [reviewId]);

  const postComment = async (payload: { parentId?: string | null; body: string }) => {
    const res = await fetch("/api/comments", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ reviewId, parentId: payload.parentId ?? null, authorName, body: payload.body }),
    });
    const json = (await res.json()) as { item?: CommentItem; error?: string };
    if (!res.ok) throw new Error(json.error || "failed");
    return json.item;
  };

  const onSubmit = async () => {
    const text = body.trim();
    if (!text) return;
    try { await postComment({ body: text }); setBody(""); await fetchComments(); }
    catch { alert("コメントの投稿に失敗しました。時間をおいて再試行してください。"); }
  };

  const onSubmitReply = async (parentId: string) => {
    const text = replyBody.trim();
    if (!text) return;
    try { await postComment({ parentId, body: text }); setReplyBody(""); setReplyTo(null); await fetchComments(); }
    catch { alert("返信の投稿に失敗しました。時間をおいて再試行してください。"); }
  };

  return (
    <div className="rounded-2xl border border-white/20 bg-white/10 backdrop-blur-md p-6 space-y-4 shadow-xl">
      <div className="flex items-center justify-between">
        <h2 className="text-lg font-semibold">コメント</h2>
        <button onClick={fetchComments} className="text-sm underline text-white/80">更新</button>
      </div>

      <div className="space-y-2">
        <div className="flex flex-col sm:flex-row gap-2">
          <input className="border border-white/20 bg-white text-black rounded px-3 py-2 sm:w-56" placeholder="名前（任意）" value={authorName} onChange={(e) => setAuthorName(e.target.value)} />
          <div className="flex-1" />
        </div>
        <textarea className="w-full border border-white/20 bg-white text-black rounded px-3 py-2 min-h-[88px]" placeholder="コメントを書く" value={body} onChange={(e) => setBody(e.target.value)} />
        <button onClick={onSubmit} className="bg-black text-white rounded px-4 py-2 disabled:opacity-50" disabled={!body.trim()}>コメントする</button>
      </div>

      {loading ? (
        <div className="text-sm text-white/70">読み込み中…</div>
      ) : parents.length === 0 ? (
        <div className="text-sm text-white/70">まだコメントがありません。</div>
      ) : (
        <div className="space-y-4">
          {parents.map((p) => {
            const kids = childrenByParent.get(p.id) ?? [];
            return (
              <div key={p.id} className="border border-white/20 rounded-lg p-4 space-y-3 bg-white/95 text-black">
                <div className="flex items-center justify-between gap-3">
                  <div className="text-sm font-medium">
                    {p.author_name || "匿名"}
                    <span className="ml-2 text-xs text-gray-500">{formatJa(p.created_at)}</span>
                  </div>
                  <button className="text-sm underline text-gray-600" onClick={() => { setReplyTo((cur) => (cur === p.id ? null : p.id)); setReplyBody(""); }}>返信</button>
                </div>
                <p className="text-sm whitespace-pre-wrap">{p.body}</p>
                {replyTo === p.id && (
                  <div className="space-y-2 border-t pt-3">
                    <textarea className="w-full border rounded px-3 py-2 min-h-[72px] text-black" placeholder="返信を書く" value={replyBody} onChange={(e) => setReplyBody(e.target.value)} />
                    <div className="flex gap-2">
                      <button className="bg-black text-white rounded px-4 py-2 disabled:opacity-50" disabled={!replyBody.trim()} onClick={() => onSubmitReply(p.id)}>返信する</button>
                      <button className="border rounded px-4 py-2" onClick={() => { setReplyTo(null); setReplyBody(""); }}>キャンセル</button>
                    </div>
                  </div>
                )}
                {kids.length > 0 && (
                  <div className="space-y-3 border-t pt-3">
                    {kids.map((c) => (
                      <div key={c.id} className="rounded-md bg-gray-50 p-3">
                        <div className="text-xs text-gray-600"><span className="font-medium">{c.author_name || "匿名"}</span><span className="ml-2">{formatJa(c.created_at)}</span></div>
                        <p className="text-sm whitespace-pre-wrap mt-1">{c.body}</p>
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
