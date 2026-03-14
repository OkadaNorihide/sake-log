"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";
import { useParams } from "next/navigation";

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

function round1(n: number) {
  return Math.round(n * 10) / 10;
}

function countTop(list: string[], topN: number) {
  const m = new Map<string, number>();
  for (const x of list) m.set(x, (m.get(x) ?? 0) + 1);
  return [...m.entries()]
    .sort((a, b) => b[1] - a[1])
    .slice(0, topN)
    .map(([label, count]) => ({ label, count }));
}

/* -----------------------------
   Cloudinary変換（HEIC対応）
------------------------------ */
function cloudinaryTransform(url: string, transform: string) {
  if (!url?.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", `/upload/${transform}/`);
}

function toThumbUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_fill,w_220,h_220");
}

function toPreviewUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_fill,w_900,h_900");
}

/* -----------------------------
   重複除外ユーティリティ
------------------------------ */
function uniqKeepOrder(arr: string[]) {
  const seen = new Set<string>();
  const out: string[] = [];
  for (const x of arr) {
    if (!x) continue;
    if (seen.has(x)) continue;
    seen.add(x);
    out.push(x);
  }
  return out;
}

export default function BottleDetailPage() {
  const params = useParams<{ name: string }>();
  const rawName = typeof params?.name === "string" ? params.name : "";
  const decodedName = rawName ? decodeURIComponent(rawName) : "";

  const [all, setAll] = useState<Review[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchReviews = async () => {
      setLoading(true);
      try {
        const res = await fetch("/api/reviews", { cache: "no-store" });
        const json = (await res.json()) as { items?: Review[]; error?: string };
        if (!res.ok) throw new Error(json.error || "failed");
        setAll(Array.isArray(json.items) ? json.items : []);
      } catch {
        setAll([]);
      } finally {
        setLoading(false);
      }
    };

    fetchReviews();
  }, []);

  const reviews = useMemo(() => {
    const filtered = all.filter((r) => (r.name ?? "").trim() === decodedName);
    filtered.sort((a, b) => (a.created_at < b.created_at ? 1 : -1));
    return filtered;
  }, [all, decodedName]);

  const summary = useMemo(() => {
    if (reviews.length === 0) return null;

    const avg =
      reviews.reduce((s, r) => s + (Number(r.rating) || 0), 0) / reviews.length;

    const allTastes = reviews.flatMap((r) =>
      Array.isArray(r.tastes) ? r.tastes : []
    );
    const topTastes = countTop(allTastes, 3);

    const collected = uniqKeepOrder(
      reviews.flatMap((r) => (Array.isArray(r.images) ? r.images : []))
    ).slice(0, 3);

    const heroUrls = collected.map((u) => toPreviewUrl(u));

    return {
      avgRating: round1(avg),
      reviewCount: reviews.length,
      topTastes,
      latestAt: reviews[0]?.created_at ?? "",
      heroUrls,
    };
  }, [reviews]);

  if (!decodedName) {
    return (
      <div className="p-6 max-w-3xl mx-auto space-y-4">
        <div className="rounded-lg border p-6">銘柄名が取得できませんでした。</div>
        <Link href="/" className="underline text-sm">
          一覧へ戻る
        </Link>
      </div>
    );
  }

  return (
    <div className="relative min-h-screen text-white">
      <div
        className="absolute inset-0 bg-cover bg-center"
        style={{ backgroundImage: "url('/bottle-bg.jpg')" }}
      />
      <div className="absolute inset-0 bg-black/75" />

      <div className="relative z-10 p-6 max-w-5xl mx-auto space-y-6">
        <header className="flex items-start justify-between gap-4">
          <div className="space-y-2">
            <h1 className="text-3xl md:text-4xl font-bold tracking-wide drop-shadow-lg">
              {decodedName}
            </h1>
            <div className="text-white/70 text-sm">
              レビュー（最新順）
              {summary?.reviewCount ? ` · ${summary.reviewCount}件` : ""}
            </div>
          </div>

          <Link
            href="/"
            className="inline-flex items-center bg-white text-black rounded-lg px-4 py-2 font-medium shadow hover:bg-gray-100 transition"
          >
            一覧へ戻る
          </Link>
        </header>

        <section className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-5 md:p-6 space-y-5 shadow-xl">
          {loading ? (
            <div className="text-sm text-white/80">読み込み中...</div>
          ) : summary ? (
            <>
              {summary.heroUrls.length > 0 ? (
                <div className="grid grid-cols-1 md:grid-cols-3 gap-3">
                  {summary.heroUrls.map((url, idx) => (
                    <div
                      key={idx}
                      className="rounded-2xl overflow-hidden border border-white/20 bg-white/5"
                    >
                      <img
                        src={url}
                        alt={`${decodedName}-hero-${idx}`}
                        className="w-full aspect-[16/10] object-cover"
                      />
                    </div>
                  ))}
                </div>
              ) : (
                <div className="rounded-2xl border border-white/20 bg-white/5 p-10 text-white/70 text-sm">
                  写真はまだありません
                </div>
              )}

              <div className="flex items-start justify-between gap-4">
                <div className="text-white/70 text-sm">統合評価</div>
                <div className="text-right">
                  <div className="text-2xl font-semibold">
                    ★ {summary.avgRating.toFixed(1)}
                  </div>
                  <div className="text-white/70 text-sm">{summary.reviewCount}件</div>
                </div>
              </div>

              <div className="flex flex-wrap gap-2">
                {summary.topTastes.length === 0 ? (
                  <span className="text-sm text-white/60">味わい未登録</span>
                ) : (
                  summary.topTastes.map((t) => (
                    <span
                      key={t.label}
                      className="text-xs rounded-full px-3 py-1 border border-white/20 bg-white/5"
                      title={`${t.count}件`}
                    >
                      #{t.label}
                      <span className="text-white/60"> · {t.count}</span>
                    </span>
                  ))
                )}
              </div>

              <div className="text-xs text-white/60">
                最終レビュー：
                {summary.latestAt
                  ? new Date(summary.latestAt).toLocaleString("ja-JP")
                  : "—"}
              </div>
            </>
          ) : (
            <div className="text-sm text-white/80">
              この銘柄のレビューが見つかりませんでした。
            </div>
          )}
        </section>

        <section className="space-y-4">
          <h2 className="text-lg font-semibold drop-shadow">レビュー一覧</h2>

          {loading ? (
            <div className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-8 text-white/80">
              読み込み中...
            </div>
          ) : reviews.length === 0 ? (
            <div className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-8 text-white/80">
              まだレビューがありません。
              <div className="mt-3">
                <Link href="/register" className="underline">
                  ＋ お酒を登録
                </Link>
              </div>
            </div>
          ) : (
            reviews.map((r) => (
              <div
                key={r.id}
                className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-5 space-y-3 shadow-xl"
              >
                <div className="flex items-start justify-between gap-4">
                  <div className="text-sm text-white/70">
                    {r.created_at
                      ? new Date(r.created_at).toLocaleString("ja-JP")
                      : "—"}
                  </div>
                  <div className="text-sm">
                    {"★".repeat(r.rating)}
                    <span className="text-white/30">
                      {"★".repeat(Math.max(0, 5 - r.rating))}
                    </span>
                  </div>
                </div>

                {(r.tastes?.length > 0 || r.scenes?.length > 0) && (
                  <div className="flex flex-wrap gap-2">
                    {r.tastes?.map((t) => (
                      <span
                        key={`t-${r.id}-${t}`}
                        className="text-xs rounded-full px-3 py-1 border border-white/20 bg-white/5"
                      >
                        #{t}
                      </span>
                    ))}
                    {r.scenes?.map((s) => (
                      <span
                        key={`s-${r.id}-${s}`}
                        className="text-xs rounded-full px-3 py-1 border border-white/20 bg-white/5"
                      >
                        #{s}
                      </span>
                    ))}
                  </div>
                )}

                {Array.isArray(r.images) && r.images.length > 0 && (
                  <div className="flex gap-2 flex-wrap">
                    {r.images.slice(0, 3).map((src, idx) => (
                      <Link key={idx} href={`/alcohol/${encodeURIComponent(r.id)}`}>
                        <img
                          src={toThumbUrl(src)}
                          alt={`thumb-${idx}`}
                          className="h-20 w-20 object-cover rounded-xl border border-white/20 hover:opacity-90"
                        />
                      </Link>
                    ))}
                  </div>
                )}

                {r.memo?.trim() ? (
                  <p className="text-sm text-white/85 whitespace-pre-wrap">{r.memo}</p>
                ) : (
                  <p className="text-sm text-white/50">（メモなし）</p>
                )}

                <div>
                  <Link
                    href={`/alcohol/${encodeURIComponent(r.id)}`}
                    className="text-sm underline text-white/80"
                  >
                    このレビューの詳細を見る
                  </Link>
                </div>
              </div>
            ))
          )}
        </section>

        <div className="flex gap-3">
          <Link
            href="/register"
            className="w-1/2 bg-white text-black rounded-lg px-4 py-3 text-center font-medium shadow hover:bg-gray-100 transition"
          >
            追加で登録
          </Link>
          <Link
            href="/"
            className="w-1/2 bg-black/60 border border-white/20 rounded-lg px-4 py-3 text-center font-medium hover:bg-black/70 transition"
          >
            一覧へ
          </Link>
        </div>

        <div className="text-xs text-white/40 pt-2">
          background photo: public/bottle-bg.jpg
        </div>
      </div>
    </div>
  );
}