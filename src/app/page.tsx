"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";

type Review = {
  id: string;
  name: string;
  rating: number;
  tastes: string[];
  scenes: string[];
  memo: string;
  images?: string[];
  createdAt: string;
};

type BottleSummary = {
  name: string;
  avgRating: number;
  reviewCount: number;
  topTastes: { label: string; count: number }[];
  latestAt: string;
  thumbUrl?: string;
};

const STORAGE_KEY = "sake-log:alcohols";

function loadReviews(): Review[] {
  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    if (!Array.isArray(parsed)) return [];
    return parsed as Review[];
  } catch {
    return [];
  }
}

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

function toThumbUrl(url: string) {
  if (!url?.includes("res.cloudinary.com")) return url;
  return url.replace(
    "/upload/",
    "/upload/f_auto,q_auto,c_fill,w_200,h_200/"
  );
}

function buildSummaries(reviews: Review[]): BottleSummary[] {
  const byName = new Map<string, Review[]>();

  for (const r of reviews) {
    const name = (r.name ?? "").trim();
    if (!name) continue;
    const arr = byName.get(name) ?? [];
    arr.push(r);
    byName.set(name, arr);
  }

  const summaries: BottleSummary[] = [];

  for (const [name, rs] of byName.entries()) {
    const reviewCount = rs.length;
    const avgRating =
      rs.reduce((s, r) => s + (Number(r.rating) || 0), 0) / reviewCount;

    const allTastes = rs.flatMap((r) =>
      Array.isArray(r.tastes) ? r.tastes : []
    );
    const topTastes = countTop(allTastes, 3);

    const latest =
      rs
        .map((r) => r.createdAt || "")
        .filter(Boolean)
        .sort()
        .at(-1) || "";

    const latestReview =
      rs
        .filter((r) => r.createdAt)
        .sort((a, b) => (a.createdAt < b.createdAt ? 1 : -1))[0] ?? rs[0];

    const rawThumb = latestReview?.images?.[0];
    const thumbUrl = rawThumb ? toThumbUrl(rawThumb) : undefined;

    summaries.push({
      name,
      avgRating: round1(avgRating),
      reviewCount,
      topTastes,
      latestAt: latest || new Date().toISOString(),
      thumbUrl,
    });
  }

  return summaries;
}

type SortKey = "reviewCount" | "avgRating" | "latest";

export default function HomePage() {
  const [reviews, setReviews] = useState<Review[]>([]);
  const [q, setQ] = useState("");
  const [sortKey, setSortKey] = useState<SortKey>("reviewCount");

  useEffect(() => {
    setReviews(loadReviews());
  }, []);

  const summaries = useMemo(() => buildSummaries(reviews), [reviews]);

  const filtered = useMemo(() => {
    const query = q.trim();
    if (!query) return summaries;
    return summaries.filter((s) => s.name.includes(query));
  }, [summaries, q]);

  const sorted = useMemo(() => {
    const arr = [...filtered];
    if (sortKey === "reviewCount") {
      arr.sort((a, b) => b.reviewCount - a.reviewCount);
    } else if (sortKey === "avgRating") {
      arr.sort((a, b) => b.avgRating - a.avgRating);
    } else {
      arr.sort((a, b) => (a.latestAt < b.latestAt ? 1 : -1));
    }
    return arr;
  }, [filtered, sortKey]);

  return (
    <div className="relative min-h-screen text-white">
      {/* 背景画像 */}
      <div
        className="absolute inset-0 bg-cover bg-center opacity-45"
        style={{ backgroundImage: "url('/bar-bg.jpg')" }}
      />
      <div className="absolute inset-0 bg-black/40" />

      {/* コンテンツ */}
      <div className="relative z-10 p-6 max-w-5xl mx-auto space-y-8">
        <header className="flex items-center justify-between gap-3">
          <h1 className="text-3xl font-bold tracking-wide drop-shadow-lg">
            SAKE-LOG
          </h1>

          <Link
            href="/register"
            className="bg-white text-black rounded px-5 py-2 font-medium hover:bg-gray-200 transition"
          >
            ＋ お酒を登録
          </Link>
        </header>

        {/* 検索 & ソート */}
        <section className="bg-white/10 backdrop-blur-md rounded-2xl p-6 flex flex-col md:flex-row gap-4">
          <input
            className="flex-1 bg-white/20 border border-white/20 text-white placeholder-gray-300 p-3 rounded-lg outline-none focus:ring-2 focus:ring-white/40"
            placeholder="銘柄名で検索（部分一致）"
            value={q}
            onChange={(e) => setQ(e.target.value)}
          />

          <select
            className="bg-white/20 border border-white/20 text-white p-3 rounded-lg md:w-56"
            value={sortKey}
            onChange={(e) => setSortKey(e.target.value as SortKey)}
          >
            <option value="reviewCount">レビュー数が多い順</option>
            <option value="avgRating">平均評価が高い順</option>
            <option value="latest">新着順</option>
          </select>
        </section>

        {/* 一覧 */}
        {sorted.length === 0 ? (
          <div className="bg-white/10 backdrop-blur-md rounded-xl p-6 text-sm">
            まだ登録がありません。
          </div>
        ) : (
          <section className="grid grid-cols-1 md:grid-cols-2 gap-6">
            {sorted.map((s) => (
              <Link
                key={s.name}
                href={`/bottle/${encodeURIComponent(s.name)}`}
                className="bg-white/10 backdrop-blur-md rounded-2xl p-6 space-y-4 hover:bg-white/20 transition block"
              >
                <div className="flex items-start justify-between gap-4">
                  <div className="flex items-center gap-4">
                    {s.thumbUrl ? (
                      <img
                        src={s.thumbUrl}
                        alt={s.name}
                        className="h-16 w-16 object-cover rounded-lg border border-white/20"
                      />
                    ) : (
                      <div className="h-16 w-16 rounded-lg bg-white/10 flex items-center justify-center text-xs text-gray-300">
                        no photo
                      </div>
                    )}

                    <div className="text-lg font-semibold">
                      {s.name}
                    </div>
                  </div>

                  <div className="text-right text-sm">
                    ★ {s.avgRating.toFixed(1)}
                    <div className="text-xs text-gray-300">
                      {s.reviewCount}件
                    </div>
                  </div>
                </div>

                <div className="flex flex-wrap gap-2">
                  {s.topTastes.map((t) => (
                    <span
                      key={t.label}
                      className="text-xs bg-white/20 px-2 py-1 rounded-full"
                    >
                      #{t.label} · {t.count}
                    </span>
                  ))}
                </div>

                <div className="text-xs text-gray-300">
                  最終レビュー：
                  {new Date(s.latestAt).toLocaleString("ja-JP")}
                </div>
              </Link>
            ))}
          </section>
        )}
      </div>
    </div>
  );
}
