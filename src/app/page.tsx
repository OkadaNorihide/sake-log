"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";

const WHISKY_TASTES = ["ピート / スモーキー", "フルーティ", "シェリー", "バニラ", "スパイシー", "ライト", "甘い"];
const WHISKY_SCENES = ["家飲み", "バー", "居酒屋", "贈答", "特別な日"];
const WHISKY_CATEGORIES = ["スコッチ(シングルモルト)", "スコッチ(ブレンデッド)", "ジャパニーズ(定番)", "ジャパニーズ(クラフト)", "バーボン", "アイリッシュ", "カナディアン", "ワールド", "その他"];

const SAKE_TASTES = ["甘口", "辛口", "濃醇", "淡麗", "香り高い", "旨味", "酸味", "まろやか", "キレがある"];
const SAKE_SCENES = ["家飲み", "和食", "居酒屋", "贈答", "特別な日"];
const SAKE_CATEGORIES = ["純米", "純米吟醸", "純米大吟醸", "吟醸", "大吟醸", "本醸造", "にごり", "古酒", "その他", "不明"];

const TASTE_NORMALIZE: Record<string, string> = {
  "フルーティー": "フルーティ",
  "スモーキー": "ピート / スモーキー",
  "軽い": "ライト",
};
function normalizeTaste(t: string): string {
  return TASTE_NORMALIZE[t] ?? t;
}

function toThumbUrl(url: string) {
  if (!url?.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", "/upload/f_auto,q_auto,c_fill,w_200,h_200/");
}

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
  drink_type: string;
};

type DrinkType = "whisky" | "sake";

export default function HubPage() {
  // Register modal
  const [showRegisterModal, setShowRegisterModal] = useState(false);

  // Drawer
  const [drawerOpen, setDrawerOpen] = useState(false);
  const [drawerDrinkType, setDrawerDrinkType] = useState<DrinkType>("whisky");
  const [drawerQ, setDrawerQ] = useState("");
  const [filterCategory, setFilterCategory] = useState<string | null>(null);
  const [filterRating, setFilterRating] = useState<number | null>(null);
  const [filterTaste, setFilterTaste] = useState<string | null>(null);
  const [filterScene, setFilterScene] = useState<string | null>(null);
  const [mapAttrs, setMapAttrs] = useState<string[]>([]);

  // Data
  const [whiskyReviews, setWhiskyReviews] = useState<Review[]>([]);
  const [sakeReviews, setSakeReviews] = useState<Review[]>([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchAll = async () => {
      try {
        const [wRes, sRes] = await Promise.all([
          fetch("/api/reviews?drink_type=whisky", { cache: "no-store" }),
          fetch("/api/reviews?drink_type=sake", { cache: "no-store" }),
        ]);
        const wJson = await wRes.json();
        const sJson = await sRes.json();
        setWhiskyReviews(Array.isArray(wJson.items) ? wJson.items : []);
        setSakeReviews(Array.isArray(sJson.items) ? sJson.items : []);
      } catch {
        setWhiskyReviews([]);
        setSakeReviews([]);
      } finally {
        setLoading(false);
      }
    };
    fetchAll();
  }, []);

  // Reset filters when drink type changes
  useEffect(() => {
    setFilterCategory(null);
    setFilterRating(null);
    setFilterTaste(null);
    setFilterScene(null);
    setMapAttrs([]);
  }, [drawerDrinkType]);

  const currentTastes = drawerDrinkType === "whisky" ? WHISKY_TASTES : SAKE_TASTES;
  const currentScenes = drawerDrinkType === "whisky" ? WHISKY_SCENES : SAKE_SCENES;
  const currentCategories = drawerDrinkType === "whisky" ? WHISKY_CATEGORIES : SAKE_CATEGORIES;
  const currentReviews = drawerDrinkType === "whisky" ? whiskyReviews : sakeReviews;
  const bottleBasePath = drawerDrinkType === "whisky" ? "/whisky/bottle" : "/sake/bottle";
  const reviewBasePath = drawerDrinkType === "whisky" ? "/whisky/alcohol" : "/sake/alcohol";

  // Recent
  const recentWhisky = useMemo(() =>
    [...whiskyReviews].sort((a, b) => (a.created_at < b.created_at ? 1 : -1)).slice(0, 12),
    [whiskyReviews]);
  const recentSake = useMemo(() =>
    [...sakeReviews].sort((a, b) => (a.created_at < b.created_at ? 1 : -1)).slice(0, 12),
    [sakeReviews]);

  // Mapping
  function toggleMapAttr(attr: string) {
    setMapAttrs((prev) => {
      if (prev.includes(attr)) return prev.filter((a) => a !== attr);
      if (prev.length >= 2) return [prev[1], attr];
      return [...prev, attr];
    });
  }

  const mapPoints = useMemo(() => {
    if (mapAttrs.length !== 2) return [];
    const [a1, a2] = mapAttrs;
    const byName = new Map<string, Review[]>();
    for (const r of currentReviews) {
      const name = (r.name ?? "").trim();
      if (!name) continue;
      if (!byName.has(name)) byName.set(name, []);
      byName.get(name)!.push(r);
    }
    const points = [...byName.entries()].map(([name, rs]) => {
      const total = rs.length;
      const scoreX = rs.filter((r) => [
        ...(r.tastes ?? []).map(normalizeTaste), ...(r.scenes ?? [])
      ].includes(a1)).length / total;
      const scoreY = rs.filter((r) => [
        ...(r.tastes ?? []).map(normalizeTaste), ...(r.scenes ?? [])
      ].includes(a2)).length / total;
      return { name, scoreX, scoreY, reviewCount: total };
    });
    return points.sort((a, b) => b.reviewCount - a.reviewCount).slice(0, 25);
  }, [mapAttrs, currentReviews]);

  // Apply filters to current reviews for showing filtered recent posts
  const filteredReviews = useMemo(() => {
    let result = currentReviews;
    if (drawerQ.trim()) {
      const q = drawerQ.trim().toLowerCase().replace(/\s+/g, "");
      result = result.filter((r) => (r.name ?? "").toLowerCase().replace(/\s+/g, "").includes(q));
    }
    if (filterCategory) result = result.filter((r) => r.category === filterCategory);
    if (filterRating) result = result.filter((r) => r.rating >= filterRating);
    if (filterTaste) result = result.filter((r) => (r.tastes ?? []).map(normalizeTaste).includes(filterTaste));
    if (filterScene) result = result.filter((r) => (r.scenes ?? []).includes(filterScene));
    return result;
  }, [currentReviews, drawerQ, filterCategory, filterRating, filterTaste, filterScene]);

  const hasFilter = drawerQ.trim().length > 0 || filterCategory !== null || filterRating !== null || filterTaste !== null || filterScene !== null;

  // フィルター結果から銘柄サマリを生成
  const filteredBottles = useMemo(() => {
    const byName = new Map<string, Review[]>();
    for (const r of filteredReviews) {
      const name = (r.name ?? "").trim();
      if (!name) continue;
      if (!byName.has(name)) byName.set(name, []);
      byName.get(name)!.push(r);
    }
    return [...byName.entries()]
      .map(([name, rs]) => ({
        name,
        avgRating: Math.round((rs.reduce((s, r) => s + r.rating, 0) / rs.length) * 10) / 10,
        reviewCount: rs.length,
        topTastes: (() => {
          const m = new Map<string, number>();
          rs.flatMap((r) => r.tastes ?? []).forEach((t) => m.set(t, (m.get(t) ?? 0) + 1));
          return [...m.entries()].sort((a, b) => b[1] - a[1]).slice(0, 3).map(([label]) => label);
        })(),
        thumb: rs.flatMap((r) => r.images ?? []).find(Boolean),
      }))
      .sort((a, b) => b.reviewCount - a.reviewCount);
  }, [filteredReviews]);

  const RecentCard = ({ r, basePath }: { r: Review; basePath: string }) => {
    const thumb = r.images?.[0] ? toThumbUrl(r.images[0]) : undefined;
    return (
      <Link
        href={`${basePath}/${encodeURIComponent(r.id)}`}
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
  };

  return (
    <div className="relative min-h-screen text-white">
      {/* Background */}
      <div className="absolute inset-0 bg-repeat-y opacity-45" style={{ backgroundImage: "url('/bar-bg.jpg')", backgroundSize: "100% auto" }} />
      <div className="absolute inset-0 bg-black/50" />

      {/* Drawer overlay */}
      {drawerOpen && (
        <div className="fixed inset-0 z-20 bg-black/30" onClick={() => setDrawerOpen(false)} />
      )}

      {/* Drawer tab (always visible) */}
      <button
        className="fixed left-0 top-1/2 -translate-y-1/2 z-30 bg-white/15 backdrop-blur-md border border-white/20 border-l-0 rounded-r-xl px-2 py-5 text-xs text-white/70 hover:bg-white/25 transition"
        onClick={() => setDrawerOpen((v) => !v)}
        style={{ writingMode: "vertical-rl", textOrientation: "mixed" }}
      >
        {hasFilter ? "詳細検索 ●" : "詳細検索"}
      </button>

      {/* Drawer panel */}
      <div className={`fixed left-0 top-0 h-full z-30 bg-gray-950/95 backdrop-blur-md border-r border-white/15 transition-transform duration-300 ease-in-out ${drawerOpen ? "translate-x-0" : "-translate-x-full"} w-80 overflow-y-auto`}>
        <div className="p-5 space-y-5 pt-8">
          <div className="flex items-center justify-between">
            <h2 className="text-sm font-semibold tracking-wide">詳細検索</h2>
            <button onClick={() => setDrawerOpen(false)} className="text-white/50 hover:text-white text-lg leading-none">✕</button>
          </div>

          {/* 銘柄名検索 */}
          <div className="space-y-2">
            <p className="text-xs text-white/40 tracking-wider">銘柄名</p>
            <input
              type="text"
              value={drawerQ}
              onChange={(e) => setDrawerQ(e.target.value)}
              placeholder="例：獺祭、山崎..."
              className="w-full bg-white/10 border border-white/20 rounded-lg px-3 py-2 text-sm text-white placeholder-white/40 outline-none focus:ring-2 focus:ring-white/30"
            />
          </div>

          {/* Drink type */}
          <div className="space-y-2">
            <p className="text-xs text-white/40 tracking-wider">酒類</p>
            <div className="flex gap-2">
              <button
                onClick={() => setDrawerDrinkType("whisky")}
                className={`flex-1 py-2 rounded-lg text-sm border transition ${drawerDrinkType === "whisky" ? "bg-amber-500/30 border-amber-400/60 text-amber-300 font-medium" : "border-white/20 hover:bg-white/10"}`}
              >
                🥃 ウィスキー
              </button>
              <button
                onClick={() => setDrawerDrinkType("sake")}
                className={`flex-1 py-2 rounded-lg text-sm border transition ${drawerDrinkType === "sake" ? "bg-blue-500/30 border-blue-400/60 text-blue-300 font-medium" : "border-white/20 hover:bg-white/10"}`}
              >
                🍶 日本酒
              </button>
            </div>
          </div>

          {/* Category */}
          <div className="space-y-2">
            <p className="text-xs text-white/40 tracking-wider">カテゴリ</p>
            <div className="flex flex-wrap gap-1.5">
              {currentCategories.map((c) => (
                <button
                  key={c}
                  onClick={() => setFilterCategory(filterCategory === c ? null : c)}
                  className={`px-2.5 py-1 rounded-full text-xs border transition ${filterCategory === c ? "bg-amber-400 text-black border-amber-400" : "border-white/20 hover:bg-white/10"}`}
                >
                  {c}
                </button>
              ))}
            </div>
          </div>

          {/* Rating */}
          <div className="space-y-2">
            <p className="text-xs text-white/40 tracking-wider">評価</p>
            <div className="flex flex-wrap gap-1.5">
              {[4.5, 4, 3.5, 3].map((r) => (
                <button
                  key={r}
                  onClick={() => setFilterRating(filterRating === r ? null : r)}
                  className={`px-2.5 py-1 rounded-full text-xs border transition ${filterRating === r ? "bg-yellow-400 text-black border-yellow-400" : "border-white/20 hover:bg-white/10"}`}
                >
                  ★{r}以上
                </button>
              ))}
            </div>
          </div>

          {/* Taste */}
          <div className="space-y-2">
            <p className="text-xs text-white/40 tracking-wider">味わい</p>
            <div className="flex flex-wrap gap-1.5">
              {currentTastes.map((t) => (
                <button
                  key={t}
                  onClick={() => setFilterTaste(filterTaste === t ? null : t)}
                  className={`px-2.5 py-1 rounded-full text-xs border transition ${filterTaste === t ? "bg-white text-black border-white" : "border-white/20 hover:bg-white/10"}`}
                >
                  #{t}
                </button>
              ))}
            </div>
          </div>

          {/* Scene */}
          <div className="space-y-2">
            <p className="text-xs text-white/40 tracking-wider">シーン</p>
            <div className="flex flex-wrap gap-1.5">
              {currentScenes.map((s) => (
                <button
                  key={s}
                  onClick={() => setFilterScene(filterScene === s ? null : s)}
                  className={`px-2.5 py-1 rounded-full text-xs border transition ${filterScene === s ? "bg-white text-black border-white" : "border-white/20 hover:bg-white/10"}`}
                >
                  #{s}
                </button>
              ))}
            </div>
          </div>

          {/* Mapping */}
          <div className="space-y-2 pt-2 border-t border-white/10">
            <p className="text-xs text-white/40 tracking-wider">マッピング</p>
            <p className="text-xs text-white/30">味わい・シーンから2つ選ぶとマップ表示</p>
            <div className="space-y-1">
              <p className="text-xs text-white/30">── 味わい</p>
              <div className="flex flex-wrap gap-1.5">
                {currentTastes.map((t) => {
                  const idx = mapAttrs.indexOf(t);
                  return (
                    <button
                      key={t}
                      onClick={() => toggleMapAttr(t)}
                      className={`px-2.5 py-1 rounded-full text-xs border transition ${idx === 0 ? "bg-sky-400 text-black border-sky-400" : idx === 1 ? "bg-emerald-400 text-black border-emerald-400" : "border-white/20 hover:bg-white/10"}`}
                    >
                      {idx === 0 ? "X " : idx === 1 ? "Y " : ""}{t}
                    </button>
                  );
                })}
              </div>
              <p className="text-xs text-white/30 pt-1">── シーン</p>
              <div className="flex flex-wrap gap-1.5">
                {currentScenes.map((s) => {
                  const idx = mapAttrs.indexOf(s);
                  return (
                    <button
                      key={s}
                      onClick={() => toggleMapAttr(s)}
                      className={`px-2.5 py-1 rounded-full text-xs border transition ${idx === 0 ? "bg-sky-400 text-black border-sky-400" : idx === 1 ? "bg-emerald-400 text-black border-emerald-400" : "border-white/20 hover:bg-white/10"}`}
                    >
                      {idx === 0 ? "X " : idx === 1 ? "Y " : ""}{s}
                    </button>
                  );
                })}
              </div>
              {mapAttrs.length > 0 && mapAttrs.length < 2 && (
                <p className="text-xs text-white/40">あと {2 - mapAttrs.length} つ選んでください</p>
              )}
              {mapAttrs.length > 0 && (
                <button onClick={() => setMapAttrs([])} className="text-xs text-white/40 underline hover:text-white/70">選択をリセット</button>
              )}
            </div>
          </div>

          {hasFilter && (
            <button
              onClick={() => { setFilterCategory(null); setFilterRating(null); setFilterTaste(null); setFilterScene(null); }}
              className="w-full text-xs text-white/50 underline hover:text-white/80 transition py-1"
            >
              フィルターをリセット
            </button>
          )}
        </div>
      </div>

      {/* Register modal */}
      {showRegisterModal && (
        <div className="fixed inset-0 z-40 flex items-center justify-center bg-black/70" onClick={() => setShowRegisterModal(false)}>
          <div className="bg-gray-950 border border-white/20 rounded-2xl p-6 space-y-4 w-72 shadow-2xl" onClick={(e) => e.stopPropagation()}>
            <h2 className="text-lg font-semibold text-center">酒類を選択</h2>
            <Link href="/whisky/register" className="block w-full py-3 bg-amber-500/20 border border-amber-400/40 rounded-xl text-center hover:bg-amber-500/30 transition text-sm font-medium">
              🥃 ウィスキーを登録
            </Link>
            <Link href="/sake/register" className="block w-full py-3 bg-blue-500/20 border border-blue-400/40 rounded-xl text-center hover:bg-blue-500/30 transition text-sm font-medium">
              🍶 日本酒を登録
            </Link>
            <button onClick={() => setShowRegisterModal(false)} className="block w-full text-center text-sm text-white/40 hover:text-white/70 transition">
              キャンセル
            </button>
          </div>
        </div>
      )}

      {/* Main content */}
      <div className="relative z-10 p-6 max-w-5xl mx-auto space-y-10">

        {/* Hero */}
        <section className="text-center pt-12 pb-6 space-y-5">
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
          <button
            onClick={() => setShowRegisterModal(true)}
            className="inline-block bg-white text-black rounded-full px-8 py-3 font-medium hover:bg-gray-100 transition shadow-lg tracking-wide"
          >
            ＋ お酒を登録する
          </button>
        </section>

        {/* Site links */}
        <section className="grid grid-cols-2 gap-4">
          <Link href="/whisky" className="group bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-6 text-center space-y-3 hover:bg-white/20 transition shadow-lg">
            <div className="text-4xl">🥃</div>
            <div className="font-semibold text-lg tracking-wide">ウィスキー</div>
            <div className="text-xs text-white/60">銘柄一覧・レビュー・詳細検索</div>
            <div className="text-xs text-amber-300/80 group-hover:text-amber-300 transition">
              {loading ? "..." : `${whiskyReviews.length}件のレビュー`}
            </div>
          </Link>
          <Link href="/sake" className="group bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-6 text-center space-y-3 hover:bg-white/20 transition shadow-lg">
            <div className="text-4xl">🍶</div>
            <div className="font-semibold text-lg tracking-wide">日本酒</div>
            <div className="text-xs text-white/60">銘柄一覧・レビュー・詳細検索</div>
            <div className="text-xs text-blue-300/80 group-hover:text-blue-300 transition">
              {loading ? "..." : `${sakeReviews.length}件のレビュー`}
            </div>
          </Link>
        </section>

        {/* Mapping (visible when 2 attrs selected in drawer) */}
        {mapAttrs.length === 2 && (() => {
          const SVG_W = 500, SVG_H = 380;
          const PL = 70, PR = 20, PT = 20, PB = 52;
          const PW = SVG_W - PL - PR, PH = SVG_H - PT - PB;
          const drinkLabel = drawerDrinkType === "whisky" ? "🥃 ウィスキー" : "🍶 日本酒";
          return (
            <section className="bg-white/10 backdrop-blur-md border border-white/15 rounded-2xl p-4 space-y-3">
              <div className="flex items-center gap-2">
                <h2 className="text-sm font-semibold">{drinkLabel} マッピング</h2>
                <div className="flex-1 h-px bg-white/15" />
                <button onClick={() => setMapAttrs([])} className="text-xs text-white/40 underline hover:text-white/70">閉じる</button>
              </div>
              {mapPoints.length === 0 ? (
                <p className="text-xs text-white/40 text-center py-8">投稿データがありません</p>
              ) : (
                <svg viewBox={`0 0 ${SVG_W} ${SVG_H}`} className="w-full" style={{ maxHeight: 380 }}>
                  <rect x={PL} y={PT} width={PW} height={PH} fill="rgba(255,255,255,0.03)" rx={4} />
                  {[0.25, 0.5, 0.75].map((v) => (
                    <g key={v}>
                      <line x1={PL + v * PW} y1={PT} x2={PL + v * PW} y2={PT + PH} stroke="rgba(255,255,255,0.08)" />
                      <line x1={PL} y1={PT + (1 - v) * PH} x2={PL + PW} y2={PT + (1 - v) * PH} stroke="rgba(255,255,255,0.08)" />
                      <text x={PL + v * PW} y={PT + PH + 14} textAnchor="middle" fill="rgba(255,255,255,0.3)" fontSize={9}>{Math.round(v * 100)}%</text>
                      <text x={PL - 6} y={PT + (1 - v) * PH + 4} textAnchor="end" fill="rgba(255,255,255,0.3)" fontSize={9}>{Math.round(v * 100)}%</text>
                    </g>
                  ))}
                  <line x1={PL} y1={PT + PH} x2={PL + PW} y2={PT + PH} stroke="rgba(255,255,255,0.35)" />
                  <line x1={PL} y1={PT} x2={PL} y2={PT + PH} stroke="rgba(255,255,255,0.35)" />
                  <text x={PL + PW / 2} y={SVG_H - 6} textAnchor="middle" fill="rgba(135,206,250,0.9)" fontSize={12} fontWeight="600">→ {mapAttrs[0]}</text>
                  <text x={14} y={PT + PH / 2} textAnchor="middle" fill="rgba(52,211,153,0.9)" fontSize={12} fontWeight="600" transform={`rotate(-90,14,${PT + PH / 2})`}>↑ {mapAttrs[1]}</text>
                  {(() => {
                    const STEP = 18;
                    const posKey = (pt: typeof mapPoints[0]) => `${Math.round(pt.scoreX * 20)}_${Math.round(pt.scoreY * 20)}`;
                    const groups = new Map<string, typeof mapPoints>();
                    for (const pt of mapPoints) {
                      const k = posKey(pt);
                      if (!groups.has(k)) groups.set(k, []);
                      groups.get(k)!.push(pt);
                    }
                    return mapPoints.map((pt) => {
                      const group = groups.get(posKey(pt))!;
                      const idx = group.indexOf(pt);
                      const offset = (idx - (group.length - 1) / 2) * STEP;
                      const cx = PL + pt.scoreX * PW;
                      const cy = PT + (1 - pt.scoreY) * PH + offset;
                      const r = 5;
                      const label = pt.name.length > 9 ? pt.name.slice(0, 9) + "…" : pt.name;
                      const lx = pt.scoreX > 0.72 ? cx - r - 3 : cx + r + 3;
                      const anchor = pt.scoreX > 0.72 ? "end" : "start";
                      return (
                        <a key={pt.name} href={`${bottleBasePath}/${encodeURIComponent(pt.name)}`}>
                          <circle cx={cx} cy={cy} r={r} fill="rgba(251,191,36,0.8)" stroke="rgba(255,255,255,0.3)" strokeWidth={1} style={{ cursor: "pointer" }} />
                          <text x={lx} y={cy + 4} textAnchor={anchor} fill="rgba(255,255,255,0.88)" fontSize={10} style={{ cursor: "pointer" }} textDecoration="underline">{label}</text>
                        </a>
                      );
                    });
                  })()}
                </svg>
              )}
              <p className="text-xs text-white/30 text-center">クリックで銘柄詳細へ</p>
            </section>
          );
        })()}

        {/* フィルター結果（直近投稿の上） */}
        {hasFilter && !loading && (
          <section className="space-y-5">
            <div className="flex items-center gap-3">
              <h2 className="text-base font-semibold">
                {drawerDrinkType === "whisky" ? "🥃" : "🍶"} 検索結果
              </h2>
              <div className="flex-1 h-px bg-white/20" />
              <span className="text-xs text-white/40">{filteredReviews.length}件のレビュー</span>
            </div>

            {filteredReviews.length === 0 ? (
              <p className="text-sm text-white/50 text-center py-6">条件に合うレビューが見つかりませんでした。</p>
            ) : (
              <>
                {/* 関連レビュー */}
                <div>
                  <p className="text-xs text-white/40 mb-2 tracking-wider">関連レビュー</p>
                  <div className="flex gap-3 overflow-x-auto pb-2 -mx-1 px-1">
                    {filteredReviews.slice(0, 20).map((r) => (
                      <RecentCard key={r.id} r={r} basePath={reviewBasePath} />
                    ))}
                  </div>
                </div>

                {/* 銘柄一覧（横スクロール、初期5件分表示） */}
                {filteredBottles.length > 0 && (
                  <div>
                    <p className="text-xs text-white/40 mb-2 tracking-wider">銘柄一覧（{filteredBottles.length}件）</p>
                    <div className="flex gap-3 overflow-x-auto pb-2 -mx-1 px-1">
                      {filteredBottles.map((b) => (
                        <Link
                          key={b.name}
                          href={`${bottleBasePath}/${encodeURIComponent(b.name)}`}
                          className="shrink-0 w-48 flex flex-col gap-2 bg-white/10 backdrop-blur-md border border-white/15 rounded-xl p-3 hover:bg-white/20 transition"
                        >
                          {b.thumb ? (
                            <img src={toThumbUrl(b.thumb)} alt={b.name} className="h-24 w-full object-cover rounded-lg border border-white/20" />
                          ) : (
                            <div className="h-24 w-full rounded-lg bg-white/10 flex items-center justify-center text-xs text-white/30">no photo</div>
                          )}
                          <div className="text-sm font-semibold line-clamp-1">{b.name}</div>
                          <div className="flex flex-wrap gap-1">
                            {b.topTastes.map((t) => (
                              <span key={t} className="text-xs bg-white/15 px-1.5 py-0.5 rounded-full">#{t}</span>
                            ))}
                          </div>
                          <div className="flex items-center justify-between">
                            <span className="text-xs text-amber-300">★ {b.avgRating.toFixed(1)}</span>
                            <span className="text-xs text-white/40">{b.reviewCount}件</span>
                          </div>
                        </Link>
                      ))}
                    </div>
                  </div>
                )}
              </>
            )}
          </section>
        )}

        {/* Recent posts - Whisky */}
        {!loading && recentWhisky.length > 0 && (
          <section className="space-y-3">
            <div className="flex items-center gap-3">
              <h2 className="text-base font-semibold tracking-wide">🥃 ウィスキー 直近の投稿</h2>
              <div className="flex-1 h-px bg-white/20" />
              <Link href="/whisky" className="text-xs text-white/50 underline hover:text-white/80 shrink-0">一覧へ</Link>
            </div>
            <div className="flex gap-3 overflow-x-auto pb-2 -mx-1 px-1">
              {recentWhisky.map((r) => (
                <RecentCard key={r.id} r={r} basePath="/whisky/alcohol" />
              ))}
            </div>
          </section>
        )}

        {/* Recent posts - Sake */}
        {!loading && recentSake.length > 0 && (
          <section className="space-y-3">
            <div className="flex items-center gap-3">
              <h2 className="text-base font-semibold tracking-wide">🍶 日本酒 直近の投稿</h2>
              <div className="flex-1 h-px bg-white/20" />
              <Link href="/sake" className="text-xs text-white/50 underline hover:text-white/80 shrink-0">一覧へ</Link>
            </div>
            <div className="flex gap-3 overflow-x-auto pb-2 -mx-1 px-1">
              {recentSake.map((r) => (
                <RecentCard key={r.id} r={r} basePath="/sake/alcohol" />
              ))}
            </div>
          </section>
        )}

        {!loading && recentWhisky.length === 0 && recentSake.length === 0 && (
          <div className="text-center text-white/50 text-sm py-12">
            まだ投稿がありません。お酒を登録してみましょう。
          </div>
        )}
      </div>
    </div>
  );
}
