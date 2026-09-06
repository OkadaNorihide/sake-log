-- ==============================
-- reviews テーブルのボトル名を正規化
-- ==============================

-- 山崎12 → 山崎 12年
UPDATE reviews SET name = '山崎 12年' WHERE name = '山崎12';

-- bottle_master も同様に修正
UPDATE bottle_master SET name = '山崎 12年' WHERE name = '山崎12';

-- 確認: reviews に残っている名称一覧
SELECT name, COUNT(*) AS cnt FROM reviews GROUP BY name ORDER BY cnt DESC;
