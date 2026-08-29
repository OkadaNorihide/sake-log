"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";
import { useParams } from "next/navigation";

type BottleInfo = {
  summary: string;
  official_url: string;
  amazon_url: string;
  rakuten_url: string;
  hero_image_url: string;
};

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

function cloudinaryTransform(url: string, transform: string) {
  if (!url?.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", `/upload/${transform}/`);
}
function toThumbUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_fill,w_220,h_220");
}
function toPreviewUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_limit,w_1200");
}

function uniqKeepOrder(arr: string[]) {
  const seen = new Set<string>();
  return arr.filter((x) => { if (!x || seen.has(x)) return false; seen.add(x); return true; });
}

async function uploadHeroImage(file: File): Promise<string> {
  const res = await fetch("/api/cloudinary/sign", { cache: "no-store" });
  if (!res.ok) throw new Error("署名取得失敗");
  const { cloudName, apiKey, timestamp, signature, folder } = await res.json();

  const form = new FormData();
  form.append("file", file);
  form.append("api_key", apiKey);
  form.append("timestamp", String(timestamp));
  form.append("signature", signature);
  if (folder) form.append("folder", folder);

  const up = await fetch(`https://api.cloudinary.com/v1_1/${cloudName}/image/upload`, {
    method: "POST",
    body: form,
  });
  const json = await up.json();
  if (!up.ok) throw new Error(json?.error?.message || "アップロード失敗");
  return json.secure_url as string;
}

const EMPTY_INFO: BottleInfo = { summary: "", official_url: "", amazon_url: "", rakuten_url: "", hero_image_url: "" };

const CATEGORIES = ["スコッチ(シングルモルト)", "スコッチ(ブレンデッド)", "ジャパニーズ(定番)", "ジャパニーズ(クラフト)", "バーボン", "アイリッシュ", "カナディアン", "ワールド", "その他", "不明"];

export default function BottleDetailPage() {
  const params = useParams<{ name: string }>();
  const rawName = typeof params?.name === "string" ? params.name : "";
  const decodedName = rawName ? decodeURIComponent(rawName) : "";

  const [all, setAll] = useState<Review[]>([]);
  const [loading, setLoading] = useState(true);

  const [info, setInfo] = useState<BottleInfo>(EMPTY_INFO);
  const [infoLoading, setInfoLoading] = useState(true);
  const [editing, setEditing] = useState(false);
  const [draft, setDraft] = useState<BottleInfo>(EMPTY_INFO);
  const [saving, setSaving] = useState(false);
  const [uploadingHero, setUploadingHero] = useState(false);
  const [uploadError, setUploadError] = useState("");

  const [category, setCategory] = useState("");
  const [draftCategory, setDraftCategory] = useState("");

  useEffect(() => {
    fetch("/api/reviews", { cache: "no-store" })
      .then((r) => r.json())
      .then((j) => setAll(Array.isArray(j.items) ? j.items : []))
      .catch(() => setAll([]))
      .finally(() => setLoading(false));
  }, []);

  useEffect(() => {
    if (!decodedName) return;
    Promise.all([
      fetch(`/api/bottle-info/${encodeURIComponent(decodedName)}`, { cache: "no-store" }).then((r) => r.json()),
      fetch(`/api/bottle-master/${encodeURIComponent(decodedName)}`, { cache: "no-store" }).then((r) => r.json()),
    ])
      .then(([infoJson, masterJson]) => {
        if (infoJson.item) setInfo({
          summary: infoJson.item.summary ?? "",
          official_url: infoJson.item.official_url ?? "",
          amazon_url: infoJson.item.amazon_url ?? "",
          rakuten_url: infoJson.item.rakuten_url ?? "",
          hero_image_url: infoJson.item.hero_image_url ?? "",
        });
        const cat = masterJson.item?.category ?? "";
        setCategory(cat);
        setDraftCategory(cat);
      })
      .catch(() => {})
      .finally(() => setInfoLoading(false));
  }, [decodedName]);

  const startEdit = () => { setDraft({ ...info }); setDraftCategory(category); setUploadError(""); setEditing(true); };

  const handleHeroUpload = async (files: FileList | null) => {
    if (!files || files.length === 0) return;
    setUploadError("");
    setUploadingHero(true);
    try {
      const url = await uploadHeroImage(files[0]);
      setDraft((d) => ({ ...d, hero_image_url: url }));
    } catch (e: unknown) {
      setUploadError(e instanceof Error ? e.message : "アップロード失敗");
    } finally {
      setUploadingHero(false);
    }
  };

  const saveInfo = async () => {
    setSaving(true);
    try {
      const [infoRes, masterRes] = await Promise.all([
        fetch(`/api/bottle-info/${encodeURIComponent(decodedName)}`, {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify(draft),
        }),
        fetch(`/api/bottle-master/${encodeURIComponent(decodedName)}`, {
          method: "PUT",
          headers: { "Content-Type": "application/json" },
          body: JSON.stringify({ category: draftCategory }),
        }),
      ]);
      const infoJson = await infoRes.json();
      if (!infoRes.ok) throw new Error(infoJson.error || "failed");
      setInfo({
        summary: infoJson.item.summary ?? "",
        official_url: infoJson.item.official_url ?? "",
        amazon_url: infoJson.item.amazon_url ?? "",
        rakuten_url: infoJson.item.rakuten_url ?? "",
        hero_image_url: infoJson.item.hero_image_url ?? "",
      });
      const masterJson = await masterRes.json();
      if (masterRes.ok && masterJson.item) setCategory(masterJson.item.category ?? "");
      setEditing(false);
    } catch (e: unknown) {
      const msg = e instanceof Error ? e.message : String(e);
      alert(`保存に失敗しました:\n${msg}`);
    } finally {
      setSaving(false);
    }
  };

  const reviews = useMemo(() => {
    const filtered = all.filter((r) => (r.name ?? "").trim() === decodedName);
    return filtered.sort((a, b) => (a.created_at < b.created_at ? 1 : -1));
  }, [all, decodedName]);

  const summary = useMemo(() => {
    if (reviews.length === 0) return null;
    const avg = reviews.reduce((s, r) => s + (Number(r.rating) || 0), 0) / reviews.length;
    const allTastes = reviews.flatMap((r) => (Array.isArray(r.tastes) ? r.tastes : []));
    const fallbackUrls = uniqKeepOrder(
      reviews.flatMap((r) => (Array.isArray(r.images) ? r.images : []))
    ).slice(0, 3).map((u) => toPreviewUrl(u));
    return {
      avgRating: round1(avg),
      reviewCount: reviews.length,
      topTastes: countTop(allTastes, 3),
      latestAt: reviews[0]?.created_at ?? "",
      fallbackUrls,
    };
  }, [reviews]);

  if (!decodedName) {
    return (
      <div className="p-6 max-w-3xl mx-auto space-y-4">
        <div className="rounded-lg border p-6">銘柄名が取得できませんでした。</div>
        <Link href="/" className="underline text-sm">一覧へ戻る</Link>
      </div>
    );
  }

  // ヒーロー画像：固定設定 > レビュー画像フォールバック
  const heroImages = info.hero_image_url
    ? [toPreviewUrl(info.hero_image_url)]
    : (summary?.fallbackUrls ?? []);

  return (
    <div className="relative min-h-screen text-white">
      <div className="absolute inset-0 bg-cover bg-center" style={{ backgroundImage: "url('/bottle-bg.jpg')" }} />
      <div className="absolute inset-0 bg-black/75" />

      <div className="relative z-10 p-6 max-w-5xl mx-auto space-y-6">
        <header className="flex items-start justify-between gap-4">
          <div className="space-y-2">
            <h1 className="text-3xl md:text-4xl font-bold tracking-wide drop-shadow-lg">{decodedName}</h1>
            <div className="flex items-center gap-2 flex-wrap">
              {category && category !== "不明" && (
                <span className="text-xs px-2 py-0.5 rounded-full bg-amber-500/30 border border-amber-400/40 text-amber-300 font-medium">
                  {category}
                </span>
              )}
              <div className="text-white/70 text-sm">
                レビュー（最新順）{summary?.reviewCount ? ` · ${summary.reviewCount}件` : ""}
              </div>
            </div>
          </div>
          <Link href="/" className="inline-flex items-center bg-white text-black rounded-lg px-4 py-2 font-medium shadow hover:bg-gray-100 transition">
            一覧へ戻る
          </Link>
        </header>

        {/* 総合評価セクション */}
        <section className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-5 md:p-6 space-y-5 shadow-xl">
          {loading ? (
            <div className="text-sm text-white/80">読み込み中...</div>
          ) : summary ? (
            <>
              {/* ヒーロー画像 */}
              {heroImages.length > 0 ? (
                <div className={`grid gap-3 ${heroImages.length === 1 ? "grid-cols-1" : "grid-cols-1 md:grid-cols-3"}`}>
                  {heroImages.map((url, idx) => (
                    <div key={idx} className="rounded-2xl overflow-hidden border border-white/20 bg-white/5">
                      <img src={url} alt={`${decodedName}-hero-${idx}`} className="w-full aspect-[16/10] object-cover" />
                    </div>
                  ))}
                </div>
              ) : (
                <div className="rounded-2xl border border-white/20 bg-white/5 p-10 text-white/70 text-sm text-center">
                  写真はまだありません
                </div>
              )}

              <div className="flex items-start justify-between gap-4">
                <div className="text-white/70 text-sm">統合評価</div>
                <div className="text-right">
                  <div className="text-2xl font-semibold">★ {summary.avgRating.toFixed(1)}</div>
                  <div className="text-white/70 text-sm">{summary.reviewCount}件</div>
                </div>
              </div>

              <div className="flex flex-wrap gap-2">
                {summary.topTastes.length === 0 ? (
                  <span className="text-sm text-white/60">味わい未登録</span>
                ) : (
                  summary.topTastes.map((t) => (
                    <span key={t.label} className="text-xs rounded-full px-3 py-1 border border-white/20 bg-white/5" title={`${t.count}件`}>
                      #{t.label}<span className="text-white/60"> · {t.count}</span>
                    </span>
                  ))
                )}
              </div>

              <div className="text-xs text-white/60">
                最終レビュー：{summary.latestAt ? new Date(summary.latestAt).toLocaleString("ja-JP") : "—"}
              </div>
            </>
          ) : (
            <div className="text-sm text-white/80">この銘柄のレビューが見つかりませんでした。</div>
          )}
        </section>

        {/* 銘柄情報（Amazon/楽天リンク・サマリ・固定画像） */}
        {!infoLoading && (
          <section className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-5 md:p-6 space-y-4 shadow-xl">
            <div className="flex items-center justify-between">
              <h2 className="text-base font-semibold">銘柄情報</h2>
              {!editing && (
                <button onClick={startEdit} className="text-xs px-3 py-1 rounded-lg border border-white/30 hover:bg-white/10 transition">
                  編集
                </button>
              )}
            </div>

            {editing ? (
              <div className="space-y-4">

                {/* カテゴリ */}
                <div>
                  <label className="text-xs text-white/60 mb-2 block">カテゴリ</label>
                  <div className="flex flex-wrap gap-2">
                    {CATEGORIES.map((cat) => (
                      <button
                        key={cat}
                        type="button"
                        onClick={() => setDraftCategory(cat)}
                        className={`px-3 py-1 rounded-full text-xs border transition ${
                          draftCategory === cat
                            ? "bg-amber-500 border-amber-400 text-white font-semibold"
                            : "border-white/20 bg-white/5 text-white/70 hover:bg-white/10"
                        }`}
                      >
                        {cat}
                      </button>
                    ))}
                  </div>
                </div>

                {/* 固定ヒーロー画像 */}
                <div>
                  <label className="text-xs text-white/60 mb-2 block">固定画像（総合評価欄に表示）</label>
                  {draft.hero_image_url && (
                    <div className="relative mb-2 inline-block">
                      <img src={toPreviewUrl(draft.hero_image_url)} alt="hero preview" className="h-32 rounded-xl border border-white/20 object-cover" />
                      <button
                        type="button"
                        onClick={() => setDraft((d) => ({ ...d, hero_image_url: "" }))}
                        className="absolute -top-1 -right-1 bg-black/70 text-white rounded-full w-5 h-5 text-xs flex items-center justify-center hover:bg-red-600 transition"
                      >
                        ×
                      </button>
                    </div>
                  )}
                  <label className={`inline-flex items-center gap-2 px-4 py-2 border border-white/30 rounded-lg text-sm cursor-pointer hover:bg-white/10 transition ${uploadingHero ? "opacity-50 pointer-events-none" : ""}`}>
                    {uploadingHero ? (
                      <><span className="animate-spin inline-block">⟳</span> アップロード中...</>
                    ) : (
                      <>{draft.hero_image_url ? "画像を変更" : "＋ 画像を選択"}</>
                    )}
                    <input type="file" accept="image/*" className="hidden" disabled={uploadingHero} onChange={(e) => handleHeroUpload(e.target.files)} />
                  </label>
                  {uploadError && <p className="text-xs text-red-400 mt-1">{uploadError}</p>}
                </div>

                {/* 公式サイト */}
                <div>
                  <label className="text-xs text-white/60 mb-1 block">公式サイト URL</label>
                  <input
                    type="url"
                    className="w-full bg-white/10 border border-white/20 rounded-lg p-3 text-sm text-white placeholder-white/40 outline-none focus:ring-2 focus:ring-white/30"
                    placeholder="https://..."
                    value={draft.official_url}
                    onChange={(e) => setDraft((d) => ({ ...d, official_url: e.target.value }))}
                  />
                </div>

                {/* 紹介サマリ */}
                <div>
                  <label className="text-xs text-white/60 mb-1 block">紹介サマリ</label>
                  <textarea
                    className="w-full bg-white/10 border border-white/20 rounded-lg p-3 text-sm text-white placeholder-white/40 outline-none focus:ring-2 focus:ring-white/30 resize-none"
                    rows={4}
                    placeholder="この銘柄の特徴・説明など"
                    value={draft.summary}
                    onChange={(e) => setDraft((d) => ({ ...d, summary: e.target.value }))}
                  />
                </div>

                {/* Amazon */}
                <div>
                  <label className="text-xs text-white/60 mb-1 block">Amazon リンク</label>
                  <input
                    type="url"
                    className="w-full bg-white/10 border border-white/20 rounded-lg p-3 text-sm text-white placeholder-white/40 outline-none focus:ring-2 focus:ring-white/30"
                    placeholder="https://www.amazon.co.jp/..."
                    value={draft.amazon_url}
                    onChange={(e) => setDraft((d) => ({ ...d, amazon_url: e.target.value }))}
                  />
                </div>

                {/* 楽天 */}
                <div>
                  <label className="text-xs text-white/60 mb-1 block">楽天市場 リンク</label>
                  <input
                    type="url"
                    className="w-full bg-white/10 border border-white/20 rounded-lg p-3 text-sm text-white placeholder-white/40 outline-none focus:ring-2 focus:ring-white/30"
                    placeholder="https://item.rakuten.co.jp/..."
                    value={draft.rakuten_url}
                    onChange={(e) => setDraft((d) => ({ ...d, rakuten_url: e.target.value }))}
                  />
                </div>

                <div className="flex gap-2 pt-1">
                  <button onClick={saveInfo} disabled={saving || uploadingHero} className="px-4 py-2 bg-white text-black rounded-lg text-sm font-medium hover:bg-gray-100 transition disabled:opacity-50">
                    {saving ? "保存中..." : "保存"}
                  </button>
                  <button onClick={() => setEditing(false)} disabled={saving} className="px-4 py-2 bg-white/10 border border-white/20 rounded-lg text-sm hover:bg-white/20 transition">
                    キャンセル
                  </button>
                </div>
              </div>
            ) : (
              <div className="space-y-3">
                {info.summary ? (
                  <p className="text-sm text-white/85 whitespace-pre-wrap leading-relaxed">{info.summary}</p>
                ) : (
                  <p className="text-sm text-white/40">紹介文が未登録です</p>
                )}
                {(info.official_url || info.amazon_url || info.rakuten_url) && (
                  <div className="flex flex-wrap gap-2 pt-1">
                    {info.official_url && (
                      <a href={info.official_url} target="_blank" rel="noopener noreferrer" className="inline-flex items-center gap-1.5 px-4 py-2 bg-white/20 border border-white/30 text-white rounded-lg text-sm font-semibold hover:bg-white/30 transition">
                        🌐 公式サイト
                      </a>
                    )}
                    {info.amazon_url && (
                      <a href={info.amazon_url} target="_blank" rel="noopener noreferrer" className="inline-flex items-center gap-1.5 px-4 py-2 bg-[#FF9900] text-black rounded-lg text-sm font-semibold hover:bg-[#e68a00] transition">
                        Amazon で見る
                      </a>
                    )}
                    {info.rakuten_url && (
                      <a href={info.rakuten_url} target="_blank" rel="noopener noreferrer" className="inline-flex items-center gap-1.5 px-4 py-2 bg-[#BF0000] text-white rounded-lg text-sm font-semibold hover:bg-[#a00000] transition">
                        楽天市場で見る
                      </a>
                    )}
                  </div>
                )}
                {!info.summary && !info.amazon_url && !info.rakuten_url && !info.hero_image_url && (
                  <p className="text-xs text-white/40">「編集」から情報を追加できます</p>
                )}
              </div>
            )}
          </section>
        )}

        {/* レビュー一覧 */}
        <section className="space-y-4">
          <h2 className="text-lg font-semibold drop-shadow">レビュー一覧</h2>
          {loading ? (
            <div className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-8 text-white/80">読み込み中...</div>
          ) : reviews.length === 0 ? (
            <div className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-8 text-white/80">
              まだレビューがありません。
              <div className="mt-3"><Link href="/register" className="underline">＋ お酒を登録</Link></div>
            </div>
          ) : (
            reviews.map((r) => (
              <div key={r.id} className="bg-white/10 backdrop-blur-md border border-white/20 rounded-2xl p-5 space-y-3 shadow-xl">
                <div className="flex items-start justify-between gap-4">
                  <div className="text-sm text-white/70">{r.created_at ? new Date(r.created_at).toLocaleString("ja-JP") : "—"}</div>
                  <div className="text-sm">
                    {"★".repeat(r.rating)}<span className="text-white/30">{"★".repeat(Math.max(0, 5 - r.rating))}</span>
                  </div>
                </div>
                {(r.tastes?.length > 0 || r.scenes?.length > 0) && (
                  <div className="flex flex-wrap gap-2">
                    {r.tastes?.map((t) => <span key={`t-${r.id}-${t}`} className="text-xs rounded-full px-3 py-1 border border-white/20 bg-white/5">#{t}</span>)}
                    {r.scenes?.map((s) => <span key={`s-${r.id}-${s}`} className="text-xs rounded-full px-3 py-1 border border-white/20 bg-white/5">#{s}</span>)}
                  </div>
                )}
                {Array.isArray(r.images) && r.images.length > 0 && (
                  <div className="flex gap-2 flex-wrap">
                    {r.images.slice(0, 3).map((src, idx) => (
                      <Link key={idx} href={`/alcohol/${encodeURIComponent(r.id)}`}>
                        <img src={toThumbUrl(src)} alt={`thumb-${idx}`} className="h-20 w-20 object-cover rounded-xl border border-white/20 hover:opacity-90" />
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
                  <Link href={`/alcohol/${encodeURIComponent(r.id)}`} className="text-sm underline text-white/80">
                    このレビューの詳細を見る
                  </Link>
                </div>
              </div>
            ))
          )}
        </section>

        <div className="flex gap-3">
          <Link href={`/register?name=${encodeURIComponent(decodedName)}`} className="w-1/2 bg-white text-black rounded-lg px-4 py-3 text-center font-medium shadow hover:bg-gray-100 transition">
            追加で登録
          </Link>
          <Link href="/" className="w-1/2 bg-black/60 border border-white/20 rounded-lg px-4 py-3 text-center font-medium hover:bg-black/70 transition">
            一覧へ
          </Link>
        </div>
      </div>
    </div>
  );
}
