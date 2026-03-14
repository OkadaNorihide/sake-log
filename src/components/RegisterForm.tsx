"use client";

import Link from "next/link";
import { useMemo, useState } from "react";

const TASTES = ["フルーティー", "甘い", "スモーキー", "軽い", "コク", "スパイシー"];
const SCENES = ["家飲み", "バー", "居酒屋", "贈答", "特別な日"];

type Step = "form" | "confirm" | "complete";

/* -----------------------------
   Cloudinary変換（HEIC対応）
------------------------------ */

function cloudinaryTransform(url: string, transform: string) {
  if (!url.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", `/upload/${transform}/`);
}

function toThumbUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_fill,w_200,h_200");
}

function toPreviewUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_limit,w_800");
}

async function getCloudinarySignature() {
  const res = await fetch("/api/cloudinary/sign", { cache: "no-store" });
  if (!res.ok) throw new Error("failed to get signature");
  return res.json();
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

  const res = await fetch(uploadUrl, {
    method: "POST",
    body: form,
  });

  const json = await res.json();

  if (!res.ok) {
    throw new Error(json?.error?.message || "upload failed");
  }

  return json.secure_url;
}

/* -----------------------------
   Component
------------------------------ */

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
      alert(`画像アップロード失敗: ${e?.message || "unknown error"}`);
      setImages([]);
    } finally {
      setIsUploading(false);
    }
  };

  const removeImageAt = (idx: number) => {
    setImages((prev) => prev.filter((_, i) => i !== idx));
  };

  /* -----------------------------
     Supabase保存
  ------------------------------ */

  const onSubmit = async () => {
    try {
      const res = await fetch("/api/reviews", {
        method: "POST",
        headers: {
          "Content-Type": "application/json"
        },
        body: JSON.stringify({
          name: name.trim(),
          rating,
          tastes,
          scenes,
          memo: memo.trim(),
          images
        })
      });

      const json = await res.json();

      if (!res.ok) {
        throw new Error(json.error || "failed");
      }

      setCreatedId(json.item.id);
      setStep("complete");
    } catch (e: any) {
      console.error(e);
      alert(`レビュー登録失敗: ${e?.message || "unknown error"}`);
    }
  };

  /* -----------------------------
     完了画面
  ------------------------------ */

  if (step === "complete") {
    return (
      <div className="space-y-6">
        <div className="rounded-lg border p-6 space-y-2">
          <h2 className="text-xl font-bold">登録完了！</h2>
          <p className="text-sm text-gray-600">レビューが保存されました。</p>
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
            setStep("form");
          }}
        >
          続けて登録
        </button>
      </div>
    );
  }

  /* -----------------------------
     確認画面
  ------------------------------ */

  if (step === "confirm") {
    return (
      <div className="space-y-6">
        <div className="rounded-lg border p-6 space-y-4">
          <h2 className="text-xl font-bold">登録内容確認</h2>

          <div className="space-y-2 text-sm">
            <Row label="銘柄名" value={name} />
            <Row label="評価" value={"★".repeat(rating)} />
            <Row label="味" value={tastes.join(", ")} />
            <Row label="シーン" value={scenes.join(", ")} />
            <Row label="メモ" value={memo || "なし"} />
          </div>

          {images.length > 0 && (
            <div className="flex gap-2 flex-wrap">
              {images.map((src, idx) => (
                <img
                  key={idx}
                  src={toThumbUrl(src)}
                  className="h-20 w-20 object-cover rounded border"
                />
              ))}
            </div>
          )}
        </div>

        <div className="flex gap-3">
          <button
            className="w-1/2 border rounded px-4 py-2"
            onClick={() => setStep("form")}
          >
            修正
          </button>

          <button
            className="w-1/2 bg-black text-white rounded px-4 py-2"
            onClick={onSubmit}
          >
            登録する
          </button>
        </div>
      </div>
    );
  }

  /* -----------------------------
     入力画面
  ------------------------------ */

  return (
    <div className="space-y-6">

      <div className="space-y-2">
        <label>銘柄名</label>
        <input
          className="w-full border p-2 rounded text-black"
          value={name}
          onChange={(e) => setName(e.target.value)}
        />
      </div>

      <div className="space-y-2">
        <label>評価</label>
        <div className="flex gap-1 text-2xl">
          {[1,2,3,4,5].map((i)=>(
            <button
              key={i}
              onClick={()=>setRating(i)}
              className={i <= rating ? "text-yellow-400":"text-gray-300"}
            >
              ★
            </button>
          ))}
        </div>
      </div>

      <div className="space-y-2">
        <label>味</label>
        <div className="flex flex-wrap gap-2">
          {TASTES.map((t)=>(
            <button
              key={t}
              onClick={()=>toggle(t,tastes,setTastes)}
              className={`px-2 py-1 border rounded ${
                tastes.includes(t) ? "bg-black text-white":"bg-white text-black"
              }`}
            >
              #{t}
            </button>
          ))}
        </div>
      </div>

      <div className="space-y-2">
        <label>シーン</label>
        <div className="flex flex-wrap gap-2">
          {SCENES.map((s)=>(
            <button
              key={s}
              onClick={()=>toggle(s,scenes,setScenes)}
              className={`px-2 py-1 border rounded ${
                scenes.includes(s) ? "bg-black text-white":"bg-white text-black"
              }`}
            >
              #{s}
            </button>
          ))}
        </div>
      </div>

      <div className="space-y-2">
        <label>写真</label>
        <input
          type="file"
          multiple
          onChange={(e)=>handlePhotoChange(e.target.files)}
        />

        {isUploading && <p className="text-xs">アップロード中…</p>}

        {images.length > 0 && (
          <div className="flex gap-2 flex-wrap">
            {images.map((src,idx)=>(
              <button key={idx} onClick={()=>removeImageAt(idx)}>
                <img
                  src={toThumbUrl(src)}
                  className="h-20 w-20 object-cover rounded border"
                />
              </button>
            ))}
          </div>
        )}
      </div>

      <div className="space-y-2">
        <label>メモ</label>
        <textarea
          className="w-full border p-2 rounded text-black"
          value={memo}
          onChange={(e)=>setMemo(e.target.value)}
        />
      </div>

      <button
        disabled={!canGoConfirm || isUploading}
        onClick={()=>setStep("confirm")}
        className="w-full bg-black text-white rounded px-4 py-3 disabled:opacity-50"
      >
        確認画面へ
      </button>

    </div>
  );
}

function Row({label,value}:{label:string,value:string}){
  return (
    <div className="flex gap-4">
      <div className="w-24 text-gray-500">{label}</div>
      <div>{value}</div>
    </div>
  );
}