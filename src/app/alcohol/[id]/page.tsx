"use client";

import Link from "next/link";
import { useEffect, useMemo, useState } from "react";
import { useParams, useRouter } from "next/navigation";

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

// ★Cloudinary表示変換（HEIC→webp/jpg等）
function cloudinaryTransform(url: string, transform: string) {
  if (!url?.includes("res.cloudinary.com")) return url;
  return url.replace("/upload/", `/upload/${transform}/`);
}
function toThumbUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_fill,w_300,h_300");
}
function toLargeUrl(url: string) {
  return cloudinaryTransform(url, "f_auto,q_auto,c_limit,w_1400");
}

export default function ReviewDetailPage() {
  const router = useRouter();
  const params = useParams<{ id: string }>();
  const id = typeof params?.id === "string" ? params.id : "";

  const [items, setItems] = useState<Review[]>([]);
  useEffect(() => setItems(loadReviews()), []);

  const review = useMemo(() => items.find((x) => x.id === id), [items, id]);

  const onDelete = () => {
    if (!review) return;
    const ok = confirm(
      `「${review.name}」のこのレビューを削除します。よろしいですか？`
    );
    if (!ok) return;

    const next = items.filter((x) => x.id !== id);
    saveReviews(next);

    router.push("/");
    router.refresh?.();
  };

  if (!id) {
    return (
      <div className="p-6 max-w-2xl mx-auto space-y-4">
        <div className="rounded-lg border p-6">IDが取得できませんでした</div>
        <Link href="/" className="underline text-sm">
          一覧へ戻る
        </Link>
      </div>
    );
  }

  if (!review) {
    return (
      <div className="p-6 max-w-2xl mx-auto space-y-4">
        <header className="flex items-center justify-between">
          <h1 className="text-xl font-bold">レビュー詳細</h1>
          <Link href="/" className="text-sm underline text-gray-600">
            一覧へ戻る
          </Link>
        </header>
        <div className="rounded-lg border p-6 text-sm text-gray-700">
          このレビューが見つかりませんでした。
        </div>
      </div>
    );
  }

  return (
    <div className="p-6 max-w-2xl mx-auto space-y-6">
      <header className="flex items-center justify-between">
        <h1 className="text-xl font-bold">レビュー詳細</h1>
        <Link href="/" className="text-sm underline text-gray-600">
          一覧へ戻る
        </Link>
      </header>

      <div className="rounded-lg border p-6 space-y-4">
        <div className="flex items-start justify-between gap-4">
          <div>
            <div className="text-2xl font-bold">{review.name}</div>
            <div className="text-xs text-gray-500">
              登録日時：{new Date(review.createdAt).toLocaleString("ja-JP")}
            </div>
          </div>

          <div className="text-lg text-gray-700">
            {"★".repeat(review.rating)}
            <span className="text-gray-300">
              {"★".repeat(Math.max(0, 5 - review.rating))}
            </span>
          </div>
        </div>

        {(review.tastes.length > 0 || review.scenes.length > 0) && (
          <div className="flex flex-wrap gap-2">
            {review.tastes.map((t) => (
              <span key={t} className="text-xs border rounded-full px-2 py-1">
                #{t}
              </span>
            ))}
            {review.scenes.map((s) => (
              <span key={s} className="text-xs border rounded-full px-2 py-1">
                #{s}
              </span>
            ))}
          </div>
        )}

        {/* ★写真：大きめ表示（HEIC対応） */}
        {Array.isArray(review.images) && review.images.length > 0 && (
          <div className="space-y-2">
            <div className="text-sm font-medium">写真</div>

            {/* 1枚目は大きめ、残りはサムネにしても良い */}
            <div className="space-y-3">
              <img
                src={toLargeUrl(review.images[0])}
                alt="image-0"
                className="w-full rounded border object-contain bg-gray-50"
              />

              {review.images.length > 1 && (
                <div className="grid grid-cols-3 gap-2">
                  {review.images.slice(1, 4).map((src, idx) => (
                    <img
                      key={idx + 1}
                      src={toThumbUrl(src)}
                      alt={`image-${idx + 1}`}
                      className="w-full aspect-square object-cover rounded border"
                    />
                  ))}
                </div>
              )}
            </div>
          </div>
        )}

        <div className="space-y-1">
          <div className="text-sm font-medium">メモ</div>
          <p className="text-sm text-gray-700 whitespace-pre-wrap">
            {review.memo?.trim() ? review.memo : "（なし）"}
          </p>
        </div>
      </div>

      <div className="flex gap-3">
        <Link
          href={`/bottle/${encodeURIComponent(review.name)}`}
          className="w-1/2 border rounded px-4 py-2 text-center"
        >
          銘柄ページへ
        </Link>
        <button
          onClick={onDelete}
          className="w-1/2 bg-red-600 text-white rounded px-4 py-2"
        >
          削除する
        </button>
      </div>
    </div>
  );
}
