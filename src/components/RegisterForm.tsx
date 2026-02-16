"use client";

import Link from "next/link";
import { useMemo, useState } from "react";

const TASTES = ["フルーティー", "甘い", "スモーキー", "軽い", "コク", "スパイシー"];
const SCENES = ["家飲み", "バー", "居酒屋", "贈答", "特別な日"];

type Step = "form" | "confirm" | "complete";

type Review = {
  id: string;
  name: string;
  rating: number;
  tastes: string[];
  scenes: string[];
  memo: string;
  images?: string[]; // Cloudinaryのsecure_url
  createdAt: string;
};

const STORAGE_KEY = "sake-log:alcohols";

function loadReviews(): Review[] {
  try {
    const raw = localStorage.getItem(STORAGE_KEY);
    if (!raw) return [];
    const parsed = JSON.parse(raw);
    return Array.isArray(parsed) ? (parsed as Review[]) : [];
  } catch {
    return [];
  }
}

function saveReviews(items: Review[]) {
  localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
}

/**
 * CloudinaryのURLだけ、表示用に自動変換を挿入する
 * - f_auto: 端末に最適なフォーマット（HEIC→webp/jpg など）
 * - q_auto: 自動圧縮
 */
function cloudinaryTransform(url: string, transform: string) {
  if (!url.includes("res.cloudinary.com")) return url;
  // /upload/ の直後に変換指定を挿入
  return url.replace("/upload/", `/upload/${transform}/`);
}

/** 一覧/サムネ用（小さめ） */
function toThumbUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_fill,w_200,h_200");
}

/** 詳細/確認用（少し大きめ） */
function toPreviewUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_limit,w_800");
}

async function getCloudinarySignature() {
  const res = await fetch("/api/cloudinary/sign", { cache: "no-store" });
  if (!res.ok) throw new Error("failed to get signature");
  return res.json() as Promise<{
    cloudName: string;
    apiKey: string;
    timestamp: number;
    signature: string;
    folder: string;
  }>;
}

async function uploadToCloudinary(file: File): Promise<string> {
  const { cloudName, apiKey, timestamp, signature, folder } =
    await getCloudinarySignature();

  const form = new FormData();
  form.append("file", file);
  form.append("api_key", apiKey);
  form.append("timestamp", String(timestamp));
  form.append("signature", signature);
  if (folder) form.append("folder", folder);

  const uploadUrl = `https://api.cloudinary.com/v1_1/${cloudName}/image/upload`;
  const res = await fetch(uploadUrl, { method: "POST", body: form });

  // 失敗時にCloudinaryのメッセージを拾う
  let json: any = null;
  try {
    json = await res.json();
  } catch {}

  if (!res.ok) {
    const msg =
      json?.error?.message ||
      json?.message ||
      `upload failed (status ${res.status})`;
    throw new Error(msg);
  }

  const url = json?.secure_url as string | undefined;
  if (!url) throw new Error("cloudinary response missing secure_url");
  return url;
}

export default function RegisterForm() {
  const [step, setStep] = useState<Step>("form");

  const [name, setName] = useState("");
  const [rating, setRating] = useState<number>(0);
  const [tastes, setTastes] = useState<string[]>([]);
  const [scenes, setScenes] = useState<string[]>([]);
  const [memo, setMemo] = useState("");

  const [images, setImages] = useState<string[]>([]);
  const [isUploading, setIsUploading] = useState(false);

  const [createdId, setCreatedId] = useState<string>("");

  const canGoConfirm = useMemo(
    () => name.trim().length > 0 && rating > 0,
    [name, rating]
  );

  const toggle = (
    value: string,
    list: string[],
    setList: (v: string[]) => void
  ) => {
    setList(list.includes(value) ? list.filter((v) => v !== value) : [...list, value]);
  };

  const handlePhotoChange = async (files: FileList | null) => {
    if (!files) return;

    const arr = Array.from(files).slice(0, 3);
    if (arr.length === 0) {
      setImages([]);
      return;
    }

    setIsUploading(true);
    try {
      const urls: string[] = [];
      for (const f of arr) {
        const url = await uploadToCloudinary(f);
        urls.push(url);
      }
      setImages(urls);
    } catch (e: any) {
      console.error(e);
      alert(`画像アップロードに失敗: ${e?.message || "unknown error"}`);
      setImages([]);
    } finally {
      setIsUploading(false);
    }
  };

  const removeImageAt = (idx: number) => {
    setImages((prev) => prev.filter((_, i) => i !== idx));
  };

  const onSubmit = () => {
    const item: Review = {
      id: crypto.randomUUID(),
      name: name.trim(),
      rating,
      tastes,
      scenes,
      memo: memo.trim(),
      images: images.length ? images : [],
      createdAt: new Date().toISOString(),
    };

    const current = loadReviews();
    saveReviews([item, ...current]);

    setCreatedId(item.id);
    setStep("complete");
  };

  if (step === "complete") {
    return (
      <div className="space-y-6">
        <div className="rounded-lg border p-6 space-y-2">
          <h2 className="text-xl font-bold">登録完了！</h2>
          <p className="text-sm text-gray-600">一覧・銘柄ページに反映されました。</p>
        </div>

        <div className="flex gap-3">
          <Link
            href={`/alcohol/${createdId}`}
            className="w-1/2 bg-black text-white rounded px-4 py-2 text-center"
          >
            レビュー詳細を見る
          </Link>
          <Link
            href="/"
            className="w-1/2 border rounded px-4 py-2 text-center"
          >
            一覧へ
          </Link>
        </div>

        <button
          className="w-full border rounded px-4 py-2"
          onClick={() => {
            setName("");
            setRating(0);
            setTastes([]);
            setScenes([]);
            setMemo("");
            setImages([]);
            setCreatedId("");
            setStep("form");
          }}
        >
          続けて登録する
        </button>
      </div>
    );
  }

  if (step === "confirm") {
    return (
      <div className="space-y-6">
        <div className="rounded-lg border p-6 space-y-4">
          <div>
            <h2 className="text-xl font-bold">登録内容の確認</h2>
            <p className="text-sm text-gray-600">
              問題なければ「この内容で登録」を押してください。
            </p>
          </div>

          <div className="space-y-3">
            <Row label="銘柄名" value={name || "—"} />
            <Row label="評価" value={rating ? "★".repeat(rating) : "—"} />
            <Row label="味わい" value={tastes.length ? tastes.join(" / ") : "未選択"} />
            <Row label="シーン" value={scenes.length ? scenes.join(" / ") : "未選択"} />
            <Row label="メモ" value={memo.trim() ? memo : "なし"} />
          </div>

          <div className="space-y-2">
            <div className="text-sm font-medium">写真</div>
            {images.length === 0 ? (
              <div className="text-sm text-gray-500">なし</div>
            ) : (
              <div className="flex gap-2 flex-wrap">
                {images.map((src, idx) => (
                  <img
                    key={idx}
                    src={toThumbUrl(src)}
                    alt={`photo-${idx}`}
                    className="h-20 w-20 object-cover rounded border"
                  />
                ))}
              </div>
            )}
            {images.length > 0 && (
              <div className="text-xs text-gray-500">
                ※ HEICなども自動で表示用形式に変換しています
              </div>
            )}
          </div>
        </div>

        <div className="flex gap-3">
          <button
            className="w-1/2 border rounded px-4 py-2"
            onClick={() => setStep("form")}
          >
            修正する
          </button>
          <button
            className="w-1/2 bg-black text-white rounded px-4 py-2"
            onClick={onSubmit}
          >
            この内容で登録
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="space-y-6">
      <div className="rounded-lg border p-6 space-y-6">
        <div className="space-y-2">
          <label className="font-medium">銘柄名（必須）</label>
          <input
            className="w-full border border-gray-300 bg-white text-black placeholder:text-gray-400 p-3 rounded-xl focus:outline-none focus:ring-2 focus:ring-black/30"
            placeholder="例：山崎12年"
            value={name}
            onChange={(e) => setName(e.target.value)}
          />
        </div>

        <div className="space-y-2">
          <label className="font-medium">評価（必須）</label>
          <div className="flex gap-1 text-2xl">
            {[1, 2, 3, 4, 5].map((i) => (
              <button
                key={i}
                type="button"
                className={i <= rating ? "text-yellow-400" : "text-gray-300"}
                onClick={() => setRating(i)}
                aria-label={`rate-${i}`}
              >
                ★
              </button>
            ))}
          </div>
        </div>

        <div className="space-y-2">
          <label className="font-medium">味わい（複数選択）</label>
          <div className="flex gap-2 flex-wrap">
            {TASTES.map((t) => {
              const selected = tastes.includes(t);
              return (
                <button
                  key={t}
                  type="button"
                  onClick={() => toggle(t, tastes, setTastes)}
                  className={`px-3 py-1 rounded-full text-sm border transition ${
                    selected
                      ? "bg-black text-white border-black"
                      : "bg-white text-black hover:bg-gray-100"
                  }`}
                >
                  #{t}
                </button>
              );
            })}
          </div>
        </div>

        <div className="space-y-2">
          <label className="font-medium">飲んだシーン（複数選択）</label>
          <div className="flex gap-2 flex-wrap">
            {SCENES.map((s) => {
              const selected = scenes.includes(s);
              return (
                <button
                  key={s}
                  type="button"
                  onClick={() => toggle(s, scenes, setScenes)}
                  className={`px-3 py-1 rounded-full text-sm border transition ${
                    selected
                      ? "bg-black text-white border-black"
                      : "bg-white text-black hover:bg-gray-100"
                  }`}
                >
                  #{s}
                </button>
              );
            })}
          </div>
        </div>

        <div className="space-y-2">
          <label className="font-medium">写真（最大3枚・任意）</label>
          <input
            type="file"
            multiple
            className="w-full"
            onChange={(e) => handlePhotoChange(e.target.files)}
          />
          {isUploading && <p className="text-xs text-gray-500">アップロード中…</p>}

          {images.length > 0 && (
            <div className="space-y-2">
              <div className="text-xs text-gray-600">選択中（×で削除）</div>
              <div className="flex gap-2 flex-wrap">
                {images.map((src, idx) => (
                  <button
                    key={idx}
                    type="button"
                    onClick={() => removeImageAt(idx)}
                    className="relative"
                    title="削除"
                  >
                    <img
                      src={toThumbUrl(src)}
                      alt={`selected-${idx}`}
                      className="h-20 w-20 object-cover rounded border"
                    />
                    <span className="absolute -top-2 -right-2 bg-black text-white text-xs rounded-full px-2 py-0.5">
                      ×
                    </span>
                  </button>
                ))}
              </div>

              {/* 大きめプレビュー（任意） */}
              <div className="text-xs text-gray-500">
                ※ HEIC等はCloudinaryで自動的に表示用に変換されます
              </div>
              <div className="flex gap-2 flex-wrap">
                {images.slice(0, 1).map((src, idx) => (
                  <img
                    key={`preview-${idx}`}
                    src={toPreviewUrl(src)}
                    alt="preview"
                    className="max-w-full rounded border"
                  />
                ))}
              </div>
            </div>
          )}
        </div>

        <div className="space-y-2">
          <label className="font-medium">ひとことメモ（任意）</label>
          <textarea
            className="w-full border p-2 rounded"
            placeholder="感想や印象を一言で"
            value={memo}
            onChange={(e) => setMemo(e.target.value)}
          />
        </div>
      </div>

      <button
        className={`w-full rounded px-4 py-3 ${
          canGoConfirm && !isUploading
            ? "bg-black text-white"
            : "bg-gray-200 text-gray-500 cursor-not-allowed"
        }`}
        disabled={!canGoConfirm || isUploading}
        onClick={() => setStep("confirm")}
      >
        確認画面へ
      </button>

      {isUploading && (
        <p className="text-xs text-gray-500 text-center">
          ※ アップロード完了まで待ってください
        </p>
      )}
    </div>
  );
}

function Row({ label, value }: { label: string; value: string }) {
  return (
    <div className="flex gap-4">
      <div className="w-24 text-sm text-gray-500">{label}</div>
      <div className="flex-1 text-sm">{value}</div>
    </div>
  );
}
