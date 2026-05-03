"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";

const TASTES = ["フルーティー", "甘い", "スモーキー", "軽い", "コク", "スパイシー"];
const SCENES = ["家飲み", "バー", "居酒屋", "贈答", "特別な日"];
const WHISKY_CATEGORIES = ["ジャパニーズ", "スコッチ", "バーボン", "アイリッシュ", "ブレンデッド", "その他"];

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
};

type BottleInfoItem = {
  name: string;
  summary: string;
  hero_image_url: string;
  category: string | null;
  drink_type: string;
};

type BottleSummary = {
  name: string;
  avgRating: number;
  reviewCount: number;
  topTastes: { label: string; count: number }[];
  latestAt: string;
  thumbUrl?: string;
  allTastes: string[];
  allScenes: string[];
  category: string | null;
  summary: string;
  hasReviews: boolean;
};

// 検索正規化：スペース除去・小文字化・カタカナ→ひらがな変換
function normalizeSearch(s: string): string {
  return s
    .toLowerCase()
    .replace(/\s+/g, "")
    .replace(/[ァ-ン]/g, (c) => String.fromCharCode(c.charCodeAt(0) - 0x60));
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
  return url.replace("/upload/", "/upload/f_auto,q_auto,c_fill,w_200,h_200/");
}

// レビューからボトルサマリを生成
function buildSummariesFromReviews(reviews: Review[]): Map<string, BottleSummary> {
  const byName = new Map<string, Review[]>();
  for (const r of reviews) {
    const name = (r.name ?? "").trim();
    if (!name) continue;
    const arr = byName.get(name) ?? [];
    arr.push(r);
    byName.set(name, arr);
  }

  const summaries = new Map<string, BottleSummary>();
  for (const [name, rs] of byName.entries()) {
    const reviewCount = rs.length;
    const avgRating = rs.reduce((s, r) => s + (Number(r.rating) || 0), 0) / reviewCount;
    const allTastesFlat = rs.flatMap((r) => (Array.isArray(r.tastes) ? r.tastes : []));
    const allScenesFlat = rs.flatMap((r) => (Array.isArray(r.scenes) ? r.scenes : []));
    const latest = rs.map((r) => r.created_at || "").filter(Boolean).sort().at(-1) || "";
    const latestReview = rs.filter((r) => r.created_at).sort((a, b) => (a.created_at < b.created_at ? 1 : -1))[0] ?? rs[0];
    const rawThumb = latestReview?.images?.[0];

    // 最も多いカテゴリを採用
    const categoryCount = new Map<string, number>();
    for (const r of rs) {
      if (r.category && r.category !== "不明") {
        categoryCount.set(r.category, (categoryCount.get(r.category) ?? 0) + 1);
      }
    }
    const topCategory = [...categoryCount.entries()].sort((a, b) => b[1] - a[1])[0]?.[0] ?? null;

    summaries.set(name, {
      name,
      avgRating: round1(avgRating),
      reviewCount,
      topTastes: countTop(allTastesFlat, 3),
      latestAt: latest || new Date().toISOString(),
      thumbUrl: rawThumb ? toThumbUrl(rawThumb) : undefined,
      allTastes: [...new Set(allTastesFlat)],
      allScenes: [...new Set(allScenesFlat)],
      category: topCategory,
      summary: "",
      hasReviews: true,
    });
  }
  return summaries;
}

type SortKey = "reviewCount" | "avgRating" | "latest";

export default function HomePage() {
  const [reviews, setReviews] = useState<Review[]>([]);
  const [bottleInfos, setBottleInfos] = useState<BottleInfoItem[]>([]);
  const [q, setQ] = useState("");
  const [sortKey, setSortKey] = useState<SortKey>("reviewCount");
  const [loading, setLoading] = useState(true);

  const [showAllRecent, setShowAllRecent] = useState(false);

  const [filterCategory, setFilterCategory] = useState<string | null>(null);
  const [filterRating, setFilterRating] = useState<number | null>(null);
  const [filterTaste, setFilterTaste] = useState<string | null>(null);
  const [filterScene, setFilterScene] = useState<string | null>(null);

  useEffect(() => {
    const fetchAll = async () => {
      setLoading(true);
      try {
        const [reviewsRes, infosRes] = await Promise.all([
          fetch("/api/reviews", { cache: "no-store" }),
          fetch("/api/bottle-infos", { cache: "no-store" }),
        ]);
        const reviewsJson = await reviewsRes.json();
        const infosJson = await infosRes.json();
        setReviews(Array.isArray(reviewsJson.items) ? reviewsJson.items : []);
        setBottleInfos(Array.isArray(infosJson.items) ? infosJson.items : []);
      } catch {
        setReviews([]);
        setBottleInfos([]);
      } finally {
        setLoading(false);
      }
    };
    fetchAll();
  }, []);

  const summaries = useMemo(() => {
    const fromReviews = buildSummariesFromReviews(reviews);

    // bottle_info のみのエントリを追加（レビューがないもの）
    for (const info of bottleInfos) {
      if (!fromReviews.has(info.name)) {
        fromReviews.set(info.name, {
          name: info.name,
          avgRating: 0,
          reviewCount: 0,
          topTastes: [],
          latestAt: "",
          thumbUrl: info.hero_image_url ? toThumbUrl(info.hero_image_url) : undefined,
          allTastes: [],
          allScenes: [],
          category: info.category,
          summary: info.summary,
          hasReviews: false,
        });
      } else {
        // レビューあり銘柄にも summary と hero_image を補完
        const existing = fromReviews.get(info.name)!;
        if (!existing.summary) existing.summary = info.summary;
        if (!existing.thumbUrl && info.hero_image_url) existing.thumbUrl = toThumbUrl(info.hero_image_url);
        if (!existing.category) existing.category = info.category;
      }
    }

    return [...fromReviews.values()];
  }, [reviews, bottleInfos]);

  const filtered = useMemo(() => {
    let result = summaries;
    if (q.trim()) {
      const nq = normalizeSearch(q);
      result = result.filter((s) => normalizeSearch(s.name).includes(nq));
    }
    if (filterCategory !== null) result = result.filter((s) => s.category === filterCategory);
    if (filterRating !== null) result = result.filter((s) => s.hasReviews && s.avgRating >= filterRating);
    if (filterTaste !== null) result = result.filter((s) => s.allTastes.includes(filterTaste));
    if (filterScene !== null) result = result.filter((s) => s.allScenes.includes(filterScene));
    return result;
  }, [summaries, q, filterCategory, filterRating, filterTaste, filterScene]);

  const sorted = useMemo(() => {
    const arr = [...filtered];
    if (sortKey === "reviewCount") arr.sort((a, b) => b.reviewCount - a.reviewCount);
    else if (sortKey === "avgRating") arr.sort((a, b) => b.avgRating - a.avgRating);
    else arr.sort((a, b) => (a.latestAt < b.latestAt ? 1 : -1));
    return arr;
  }, [filtered, sortKey]);

  const [visibleCount, setVisibleCount] = useState(25);

  // 検索・フィルター変更時に表示数リセット
  useEffect(() => { setVisibleCount(25); }, [q, filterCategory, filterRating, filterTaste, filterScene]);

  const hasFilter = filterCategory !== null || filterRating !== null || filterTaste !== null || filterScene !== null;

  return (
    <div className="relative min-h-screen text-white">
      <div className="absolute inset-0 bg-repeat-y opacity-45" style={{ backgroundImage: "url('/bar-bg.jpg')", backgroundSize: "100% auto" }} />
      <div className="absolute inset-0 bg-black/40" />

      <div className="relative z-10 p-6 max-w-5xl mx-auto space-y-8">

        {/* ヒーローセクション */}
        <section className="text-center pt-10 pb-4 space-y-5">
          <h1 className="text-5xl md:text-7xl font-bold tracking-[0.15em] drop-shadow-lg">
            Ichigo LOG
          </h1>
          <p className="text-xl md:text-2xl text-white/80 tracking-widest font-light">
            〜一期一会の体験と感動の共有〜
          </p>
          <div className="flex items-center justify-center gap-3">
            <div className="h-px w-16 bg-white/30" />
            <div className="h-1 w-1 rounded-full bg-white/40" />
            <div className="h-px w-16 bg-white/30" />
          </div>
          <p className="text-sm md:text-base text-white/60 leading-relaxed tracking-wide">
            その一杯は、二度と同じではない。<br />
            あなたの記憶と感動を、みんなと分かち合う場所。
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

        {/* 検索・フィルター */}
        <section className="bg-white/10 backdrop-blur-md rounded-2xl p-5 space-y-5">
          <div className="flex flex-col md:flex-row gap-3">
            <input
              className="flex-1 bg-white/20 border border-white/20 text-white placeholder-gray-300 p-3 rounded-lg outline-none focus:ring-2 focus:ring-white/40"
              placeholder="銘柄名で検索（部分一致）"
              value={q}
              onChange={(e) => setQ(e.target.value)}
            />
            <select
              className="bg-white/20 border border-white/20 text-white p-3 rounded-lg md:w-48"
              value={sortKey}
              onChange={(e) => setSortKey(e.target.value as SortKey)}
            >
              <option value="reviewCount">レビュー数が多い順</option>
              <option value="avgRating">平均評価が高い順</option>
              <option value="latest">新着順</option>
            </select>
          </div>

          <div className="space-y-3">

            {/* カテゴリで探す */}
            <div className="space-y-2">
              <p className="text-xs text-white/50 tracking-wider">カテゴリで探す</p>
              <div className="flex flex-wrap gap-2">
                {WHISKY_CATEGORIES.map((c) => (
                  <button
                    key={c}
                    onClick={() => setFilterCategory(filterCategory === c ? null : c)}
                    className={`px-3 py-1 rounded-full text-sm border transition ${
                      filterCategory === c
                        ? "bg-amber-400 text-black border-amber-400"
                        : "border-white/25 hover:bg-white/10"
                    }`}
                  >
                    {c}
                  </button>
                ))}
              </div>
            </div>

            {/* 評価から探す */}
            <div className="space-y-2">
              <p className="text-xs text-white/50 tracking-wider">評価から探す</p>
              <div className="flex flex-wrap gap-2">
                {[4.5, 4, 3.5, 3].map((r) => (
                  <button
                    key={r}
                    onClick={() => setFilterRating(filterRating === r ? null : r)}
                    className={`px-3 py-1 rounded-full text-sm border transition ${
                      filterRating === r
                        ? "bg-yellow-400 text-black border-yellow-400"
                        : "border-white/25 hover:bg-white/10"
                    }`}
                  >
                    ★{r}以上
                  </button>
                ))}
              </div>
            </div>

            {/* 味わいで探す */}
            <div className="space-y-2">
              <p className="text-xs text-white/50 tracking-wider">味わいで探す</p>
              <div className="flex flex-wrap gap-2">
                {TASTES.map((t) => (
                  <button
                    key={t}
                    onClick={() => setFilterTaste(filterTaste === t ? null : t)}
                    className={`px-3 py-1 rounded-full text-sm border transition ${
                      filterTaste === t
                        ? "bg-white text-black border-white"
                        : "border-white/25 hover:bg-white/10"
                    }`}
                  >
                    #{t}
                  </button>
                ))}
              </div>
            </div>

            {/* シーンで探す */}
            <div className="space-y-2">
              <p className="text-xs text-white/50 tracking-wider">シーンで探す</p>
              <div className="flex flex-wrap gap-2">
                {SCENES.map((s) => (
                  <button
                    key={s}
                    onClick={() => setFilterScene(filterScene === s ? null : s)}
                    className={`px-3 py-1 rounded-full text-sm border transition ${
                      filterScene === s
                        ? "bg-white text-black border-white"
                        : "border-white/25 hover:bg-white/10"
                    }`}
                  >
                    #{s}
                  </button>
                ))}
              </div>
            </div>

            {hasFilter && (
              <button
                onClick={() => { setFilterCategory(null); setFilterRating(null); setFilterTaste(null); setFilterScene(null); }}
                className="text-xs text-white/50 underline hover:text-white/80 transition"
              >
                フィルターをリセット
              </button>
            )}
          </div>
        </section>

        {/* 最近の投稿 */}
        {!loading && reviews.length > 0 && (() => {
          const recentAll = [...reviews].sort((a, b) => (a.created_at < b.created_at ? 1 : -1));
          const recentVisible = recentAll.slice(0, 15);
          const recentRest = recentAll.slice(15);
          return (
            <section className="space-y-3">
              <div className="flex items-center gap-3">
                <h2 className="text-base font-semibold tracking-wide">最近の投稿</h2>
                <div className="flex-1 h-px bg-white/20" />
              </div>

              {/* 横スクロール（最大15件） */}
              <div className="flex gap-3 overflow-x-auto pb-2 -mx-1 px-1 scrollbar-hide">
                {recentVisible.map((r) => {
                  const thumb = r.images?.[0] ? toThumbUrl(r.images[0]) : undefined;
                  return (
                    <Link
                      key={r.id}
                      href={`/alcohol/${encodeURIComponent(r.id)}`}
                      className="shrink-0 w-36 bg-white/10 backdrop-blur-md border border-white/15 rounded-xl overflow-hidden hover:bg-white/20 transition"
                    >
                      {thumb ? (
                        <img src={thumb} alt={r.name} className="w-full h-28 object-cover" />
                      ) : (
                        <div className="w-full h-28 bg-white/5 flex items-center justify-center text-xs text-white/30">no photo</div>
                      )}
                      <div className="p-2 space-y-1">
                        <div className="text-xs font-semibold line-clamp-1">{r.name}</div>
                        <div className="text-xs text-amber-300">{"★".repeat(r.rating)}<span className="text-white/20">{"★".repeat(Math.max(0, 5 - r.rating))}</span></div>
                        <div className="text-xs text-white/40">{new Date(r.created_at).toLocaleDateString("ja-JP", { month: "short", day: "numeric" })}</div>
                      </div>
                    </Link>
                  );
                })}
              </div>

              {/* もっと見る（16件目以降をグリッドで展開） */}
              {recentRest.length > 0 && (
                <>
                  {showAllRecent && (
                    <div className="grid grid-cols-2 md:grid-cols-4 gap-3">
                      {recentRest.map((r) => {
                        const thumb = r.images?.[0] ? toThumbUrl(r.images[0]) : undefined;
                        return (
                          <Link
                            key={r.id}
                            href={`/alcohol/${encodeURIComponent(r.id)}`}
                            className="bg-white/10 backdrop-blur-md border border-white/15 rounded-xl overflow-hidden hover:bg-white/20 transition"
                          >
                            {thumb ? (
                              <img src={thumb} alt={r.name} className="w-full h-24 object-cover" />
                            ) : (
                              <div className="w-full h-24 bg-white/5 flex items-center justify-center text-xs text-white/30">no photo</div>
                            )}
                            <div className="p-2 space-y-1">
                              <div className="text-xs font-semibold line-clamp-1">{r.name}</div>
                              <div className="text-xs text-amber-300">{"★".repeat(r.rating)}<span className="text-white/20">{"★".repeat(Math.max(0, 5 - r.rating))}</span></div>
                              <div className="text-xs text-white/40">{new Date(r.created_at).toLocaleDateString("ja-JP", { month: "short", day: "numeric" })}</div>
                            </div>
                          </Link>
                        );
                      })}
                    </div>
                  )}
                  <div className="text-center">
                    <button
                      onClick={() => setShowAllRecent((v) => !v)}
                      className="px-6 py-2 bg-white/10 border border-white/20 rounded-full text-xs hover:bg-white/20 transition"
                    >
                      {showAllRecent ? "閉じる" : `もっと見る（残り ${recentRest.length} 件）`}
                    </button>
                  </div>
                </>
              )}
            </section>
          );
        })()}

        {/* セクション見出し */}
        <div className="flex items-center gap-3">
          <h2 className="text-lg font-semibold tracking-wide">
            {hasFilter || q.trim() ? "検索結果" : "銘柄一覧"}
          </h2>
          <div className="flex-1 h-px bg-white/20" />
          {!loading && (
            <span className="text-xs text-white/40 shrink-0">{sorted.length}件</span>
          )}
        </div>

        {/* 銘柄一覧 */}
        {loading ? (
          <div className="bg-white/10 backdrop-blur-md rounded-xl p-6 text-sm">読み込み中...</div>
        ) : sorted.length === 0 ? (
          <div className="bg-white/10 backdrop-blur-md rounded-xl p-6 text-sm">
            {hasFilter ? "条件に合う銘柄が見つかりませんでした。" : "まだ登録がありません。"}
          </div>
        ) : (
          <>
            <section className="grid grid-cols-1 md:grid-cols-2 gap-6">
              {sorted.slice(0, visibleCount).map((s) => (
                <Link
                  key={s.name}
                  href={`/bottle/${encodeURIComponent(s.name)}`}
                  className="bg-white/10 backdrop-blur-md rounded-2xl p-6 space-y-4 hover:bg-white/20 transition block"
                >
                  <div className="flex items-start justify-between gap-4">
                    <div className="flex items-center gap-4">
                      {s.thumbUrl ? (
                        <img src={s.thumbUrl} alt={s.name} className="h-16 w-16 object-cover rounded-lg border border-white/20" />
                      ) : (
                        <div className="h-16 w-16 rounded-lg bg-white/10 flex items-center justify-center text-xs text-gray-300">no photo</div>
                      )}
                      <div className="space-y-1">
                        <div className="text-lg font-semibold">{s.name}</div>
                        {s.category && (
                          <span className="text-xs bg-amber-400/20 text-amber-300 border border-amber-400/30 px-2 py-0.5 rounded-full">
                            {s.category}
                          </span>
                        )}
                      </div>
                    </div>
                    <div className="text-right text-sm shrink-0">
                      {s.hasReviews ? (
                        <>
                          ★ {s.avgRating.toFixed(1)}
                          <div className="text-xs text-gray-300">{s.reviewCount}件</div>
                        </>
                      ) : (
                        <div className="text-xs text-white/40">レビューなし</div>
                      )}
                    </div>
                  </div>

                  {s.topTastes.length > 0 && (
                    <div className="flex flex-wrap gap-2">
                      {s.topTastes.map((t) => (
                        <span key={t.label} className="text-xs bg-white/20 px-2 py-1 rounded-full">
                          #{t.label} · {t.count}
                        </span>
                      ))}
                    </div>
                  )}

                  {!s.hasReviews && s.summary && (
                    <p className="text-xs text-white/60 line-clamp-2">{s.summary}</p>
                  )}

                  {s.hasReviews && (
                    <div className="text-xs text-gray-300">
                      最終レビュー：{new Date(s.latestAt).toLocaleString("ja-JP")}
                    </div>
                  )}
                </Link>
              ))}
            </section>

            {visibleCount < sorted.length && (
              <div className="text-center pt-2">
                <button
                  onClick={() => setVisibleCount((n) => n + 25)}
                  className="px-8 py-3 bg-white/10 border border-white/20 rounded-full text-sm hover:bg-white/20 transition"
                >
                  もっと見る（残り {sorted.length - visibleCount} 件）
                </button>
              </div>
            )}
          </>
        )}
      </div>
    </div>
  );
}
