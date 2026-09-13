"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";

const SAKE_TASTES = ["甘口", "辛口", "濃醇", "淡麗", "香り高い", "旨味", "酸味", "まろやか", "キレがある"];
const SAKE_SCENES = ["家飲み", "和食", "居酒屋", "贈答", "特別な日"];
const SAKE_CATEGORIES = ["純米", "純米吟醸", "純米大吟醸", "吟醸", "大吟醸", "本醸造", "にごり", "古酒", "その他", "不明"];

type Step = "form" | "confirm" | "complete";

function toThumbUrl(url: string) {
  if (!url.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", "/upload/f_auto,q_auto,c_fill,w_200,h_200/");
}

async function uploadToCloudinary(file: File): Promise<string> {
  const res = await fetch("/api/cloudinary/sign", { cache: "no-store" });
  if (!res.ok) throw new Error("署名の取得に失敗しました");
  const { cloudName, apiKey, timestamp, signature, folder } = await res.json();
  const form = new FormData();
  form.append("file", file);
  form.append("api_key", apiKey);
  form.append("timestamp", String(timestamp));
  form.append("signature", signature);
  if (folder) form.append("folder", folder);
  const res2 = await fetch(`https://api.cloudinary.com/v1_1/${cloudName}/image/upload`, { method: "POST", body: form });
  const json = await res2.json();
  if (!res2.ok) throw new Error(json?.error?.message || "アップロード失敗");
  return json.secure_url as string;
}

function Row({ label, value }: { label: string; value: string }) {
  return (
    <div className="flex gap-4">
      <div className="w-24 text-white/50 shrink-0">{label}</div>
      <div className="text-white/90">{value}</div>
    </div>
  );
}

export default function SakeRegisterPage() {
  const [step, setStep] = useState<Step>("form");
  const [name, setName] = useState("");
  const [category, setCategory] = useState("不明");
  const [rating, setRating] = useState(0);
  const [tastes, setTastes] = useState<string[]>([]);
  const [scenes, setScenes] = useState<string[]>([]);
  const [memo, setMemo] = useState("");
  const [images, setImages] = useState<string[]>([]);
  const [localPreviews, setLocalPreviews] = useState<string[]>([]);
  const [isUploading, setIsUploading] = useState(false);
  const [uploadError, setUploadError] = useState("");
  const [bottleNames, setBottleNames] = useState<string[]>([]);
  const [createdId, setCreatedId] = useState("");

  useEffect(() => {
    fetch("/api/bottles?drink_type=sake", { cache: "no-store" })
      .then((r) => r.json())
      .then((j) => setBottleNames(Array.isArray(j.names) ? j.names : []))
      .catch(() => {});
  }, []);

  const canGoConfirm = useMemo(() => name.trim().length > 0 && rating > 0 && !isUploading, [name, rating, isUploading]);

  const toggle = (value: string, list: string[], setList: (v: string[]) => void) => {
    setList(list.includes(value) ? list.filter((v) => v !== value) : [...list, value]);
  };

  const handlePhotoChange = async (files: FileList | null) => {
    if (!files || files.length === 0) return;
    setUploadError("");
    const remaining = 3 - images.length;
    if (remaining <= 0) return;
    const arr = Array.from(files).slice(0, remaining);
    const previews = arr.map((f) => URL.createObjectURL(f));
    setLocalPreviews((prev) => [...prev, ...previews]);
    setIsUploading(true);
    try {
      const urls: string[] = [];
      for (const f of arr) urls.push(await uploadToCloudinary(f));
      setImages((prev) => [...prev, ...urls]);
      setLocalPreviews([]);
    } catch (e: unknown) {
      setUploadError(`アップロード失敗: ${e instanceof Error ? e.message : "unknown"}`);
      setLocalPreviews([]);
    } finally {
      setIsUploading(false);
    }
  };

  const onSubmit = async () => {
    try {
      const res = await fetch("/api/reviews", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ name: name.trim(), rating, tastes, scenes, memo: memo.trim(), images, category, drink_type: "sake" }),
      });
      const json = await res.json();
      if (!res.ok) throw new Error(json.error || "failed");
      setCreatedId(json.item.id);
      setStep("complete");
    } catch (e: unknown) {
      alert(`登録失敗: ${e instanceof Error ? e.message : "unknown"}`);
    }
  };

  const resetForm = () => {
    setName(""); setCategory("不明"); setRating(0); setTastes([]); setScenes([]);
    setMemo(""); setImages([]); setCreatedId(""); setStep("form");
  };

  const allPreviews = [...images.map((u) => toThumbUrl(u)), ...localPreviews];

  return (
    <div className="relative min-h-screen text-white">
      <div className="absolute inset-0 bg-repeat-y opacity-45" style={{ backgroundImage: "url('/bar-bg.jpg')", backgroundSize: "100% auto" }} />
      <div className="absolute inset-0 bg-black/60" />
      <div className="relative z-10 p-6 max-w-2xl mx-auto space-y-6">
        <header className="flex items-center justify-between">
          <h1 className="text-xl font-bold">日本酒を登録</h1>
          <Link href="/sake" className="text-sm underline text-white/80">一覧へ戻る</Link>
        </header>

        <div className="bg-white/10 backdrop-blur-md rounded-2xl p-6 shadow-xl">
          {step === "complete" ? (
            <div className="space-y-6">
              <div className="rounded-lg border border-white/20 p-6 space-y-2">
                <h2 className="text-xl font-bold">登録完了！</h2>
                <p className="text-sm text-white/70">レビューが保存されました。</p>
              </div>
              <div className="flex gap-3">
                <Link href={`/sake/alcohol/${createdId}`} className="w-1/2 bg-white text-black rounded-lg px-4 py-2 text-center font-medium">レビュー詳細を見る</Link>
                <Link href="/sake" className="w-1/2 border border-white/20 rounded-lg px-4 py-2 text-center">一覧へ</Link>
              </div>
              <button className="w-full border border-white/20 rounded-lg px-4 py-2 hover:bg-white/10 transition" onClick={resetForm}>続けて登録</button>
            </div>
          ) : step === "confirm" ? (
            <div className="space-y-6">
              <div className="rounded-lg border border-white/20 p-6 space-y-4">
                <h2 className="text-xl font-bold">登録内容確認</h2>
                <div className="space-y-2 text-sm">
                  <Row label="銘柄名" value={name} />
                  <Row label="カテゴリ" value={category} />
                  <Row label="評価" value={"★".repeat(rating)} />
                  <Row label="味わい" value={tastes.join(", ") || "なし"} />
                  <Row label="シーン" value={scenes.join(", ") || "なし"} />
                  <Row label="メモ" value={memo || "なし"} />
                </div>
                {images.length > 0 && (
                  <div className="flex gap-2 flex-wrap">
                    {images.map((src, idx) => <img key={idx} src={toThumbUrl(src)} className="h-20 w-20 object-cover rounded-lg border border-white/20" alt={`preview-${idx}`} />)}
                  </div>
                )}
              </div>
              <div className="flex gap-3">
                <button className="w-1/2 border border-white/20 rounded-lg px-4 py-2 hover:bg-white/10 transition" onClick={() => setStep("form")}>修正</button>
                <button className="w-1/2 bg-white text-black rounded-lg px-4 py-2 font-medium hover:bg-gray-100 transition" onClick={onSubmit}>登録する</button>
              </div>
            </div>
          ) : (
            <div className="space-y-6">
              {/* 銘柄名 */}
              <div className="space-y-2">
                <label className="text-sm font-medium">銘柄名 <span className="text-red-400 text-xs">必須</span></label>
                <input
                  list="sake-names-list"
                  className="w-full bg-white/10 border border-white/20 text-white placeholder-white/40 p-3 rounded-lg outline-none focus:ring-2 focus:ring-white/30"
                  placeholder="例：獺祭、久保田、..."
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                />
                {bottleNames.length > 0 && (
                  <datalist id="sake-names-list">
                    {bottleNames.map((n) => <option key={n} value={n} />)}
                  </datalist>
                )}
              </div>

              {/* カテゴリ */}
              <div className="space-y-2">
                <label className="text-sm font-medium">カテゴリ</label>
                <div className="flex flex-wrap gap-2">
                  {SAKE_CATEGORIES.map((c) => (
                    <button key={c} type="button" onClick={() => setCategory(c)}
                      className={`px-3 py-1 border rounded-full text-sm transition ${category === c ? "bg-white text-black border-white" : "border-white/30 hover:bg-white/10"}`}>
                      {c}
                    </button>
                  ))}
                </div>
              </div>

              {/* 評価 */}
              <div className="space-y-2">
                <label className="text-sm font-medium">評価 <span className="text-red-400 text-xs">必須</span></label>
                <div className="flex gap-1 text-3xl">
                  {[1, 2, 3, 4, 5].map((i) => (
                    <button key={i} type="button" onClick={() => setRating(i)} className={i <= rating ? "text-yellow-400" : "text-white/20"}>★</button>
                  ))}
                </div>
              </div>

              {/* 味わい */}
              <div className="space-y-2">
                <label className="text-sm font-medium">味わい</label>
                <div className="flex flex-wrap gap-2">
                  {SAKE_TASTES.map((t) => (
                    <button key={t} type="button" onClick={() => toggle(t, tastes, setTastes)}
                      className={`px-3 py-1 border rounded-full text-sm transition ${tastes.includes(t) ? "bg-white text-black border-white" : "border-white/30 hover:bg-white/10"}`}>
                      #{t}
                    </button>
                  ))}
                </div>
              </div>

              {/* シーン */}
              <div className="space-y-2">
                <label className="text-sm font-medium">シーン</label>
                <div className="flex flex-wrap gap-2">
                  {SAKE_SCENES.map((s) => (
                    <button key={s} type="button" onClick={() => toggle(s, scenes, setScenes)}
                      className={`px-3 py-1 border rounded-full text-sm transition ${scenes.includes(s) ? "bg-white text-black border-white" : "border-white/30 hover:bg-white/10"}`}>
                      #{s}
                    </button>
                  ))}
                </div>
              </div>

              {/* 写真 */}
              <div className="space-y-3">
                <label className="text-sm font-medium">写真（最大3枚）</label>
                {allPreviews.length > 0 && (
                  <div className="flex gap-2 flex-wrap">
                    {allPreviews.map((src, idx) => (
                      <div key={idx} className="relative">
                        <img src={src} className="h-24 w-24 object-cover rounded-xl border border-white/20" alt={`photo-${idx}`} />
                        {idx < images.length && (
                          <button type="button" onClick={() => setImages((prev) => prev.filter((_, i) => i !== idx))}
                            className="absolute -top-1 -right-1 bg-black/70 text-white rounded-full w-5 h-5 text-xs flex items-center justify-center hover:bg-red-600 transition">×</button>
                        )}
                      </div>
                    ))}
                  </div>
                )}
                {allPreviews.length < 3 && (
                  <label className={`inline-flex items-center gap-2 px-4 py-2 border border-white/30 rounded-lg text-sm cursor-pointer hover:bg-white/10 transition ${isUploading ? "opacity-50 pointer-events-none" : ""}`}>
                    {isUploading ? <><span className="animate-spin inline-block">⟳</span> アップロード中...</> : <>＋ 写真を追加</>}
                    <input type="file" multiple accept="image/*" className="hidden" disabled={isUploading} onChange={(e) => handlePhotoChange(e.target.files)} />
                  </label>
                )}
                {uploadError && <p className="text-xs text-red-400">{uploadError}</p>}
              </div>

              {/* メモ */}
              <div className="space-y-2">
                <label className="text-sm font-medium">メモ</label>
                <textarea
                  className="w-full bg-white/10 border border-white/20 text-white placeholder-white/40 p-3 rounded-lg outline-none focus:ring-2 focus:ring-white/30 resize-none"
                  rows={3} placeholder="飲んだ感想など" value={memo} onChange={(e) => setMemo(e.target.value)}
                />
              </div>

              {!canGoConfirm && (
                <p className="text-xs text-white/50 text-center">
                  {!name.trim() && rating === 0 ? "銘柄名と評価を入力してください" : !name.trim() ? "銘柄名を入力してください" : rating === 0 ? "評価（★）を選んでください" : "アップロード中です..."}
                </p>
              )}
              <button type="button" disabled={!canGoConfirm} onClick={() => setStep("confirm")}
                className="w-full bg-white text-black rounded-lg px-4 py-3 font-medium disabled:opacity-40 hover:bg-gray-100 transition">
                確認画面へ
              </button>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}
