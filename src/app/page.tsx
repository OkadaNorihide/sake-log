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
  created_at: string;
};

type BottleSummary = {
  name: string;
  avgRating: number;
  reviewCount: number;
  topTastes: { label: string; count: number }[];
  latestAt: string;
  thumbUrl?: string;
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
        .map((r) => r.created_at || "")
        .filter(Boolean)
        .sort()
        .at(-1) || "";

    const latestReview =
      rs
        .filter((r) => r.created_at)
        .sort((a, b) => (a.created_at < b.created_at ? 1 : -1))[0] ?? rs[0];

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
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchReviews = async () => {
      setLoading(true);
      try {
        const res = await fetch("/api/reviews", { cache: "no-store" });
        const json = (await res.json()) as { items?: Review[]; error?: string };
        if (!res.ok) throw new Error(json.error || "failed");
        setReviews(Array.isArray(json.items) ? json.items : []);
      } catch {
        setReviews([]);
      } finally {
        setLoading(false);
      }
    };

    fetchReviews();
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
      <div
        className="absolute inset-0 bg-cover bg-center opacity-45"
        style={{ backgroundImage: "url('/bar-bg.jpg')" }}
      />
      <div className="absolute inset-0 bg-black/40" />

      <div className="relative z-10 p-6 max-w-5xl mx-auto space-y-8">

        {/* ヒーローセクション */}
        <section className="text-center pt-10 pb-4 space-y-5">
          <h1 className="text-5xl md:text-7xl font-bold tracking-[0.15em] drop-shadow-lg">
            Ichigo LOG
          </h1>
          <p className="text-sm md:text-base text-white/75 tracking-widest">
            〜一期一会の体験と感動の共有〜
          </p>
          <div className="flex items-center justify-center gap-3">
            <div className="h-px w-16 bg-white/30" />
            <div className="h-1 w-1 rounded-full bg-white/40" />
            <div className="h-px w-16 bg-white/30" />
          </div>
          <p className="text-sm md:text-base text-white/65 leading-[2] tracking-wide">
            その一杯は、二度と同じではない。<br />
            あなたが出会ったお酒の記憶と感動を、<br />
            みんなと分かち合うための場所です。
          </p>
          <div className="pt-2">
            <Link
              href="/register"
              className="inline-block bg-white text-black rounded-full px-8 py-3 font-medium hover:bg-gray-100 transition shadow-lg tracking-wide"
            >
              ＋ お酒を登録する
            </Link>
          </div>
        </section>

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

        {loading ? (
          <div className="bg-white/10 backdrop-blur-md rounded-xl p-6 text-sm">
            読み込み中...
          </div>
        ) : sorted.length === 0 ? (
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