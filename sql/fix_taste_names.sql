-- ==============================
-- tastes 配列の旧名称を新名称に統一
-- ==============================

UPDATE reviews SET tastes = array_replace(tastes, 'フルーティー', 'フルーティ');
UPDATE reviews SET tastes = array_replace(tastes, 'スモーキー',   'ピート / スモーキー');
UPDATE reviews SET tastes = array_replace(tastes, '軽い',         'ライト');

-- 確認用
SELECT DISTINCT unnest(tastes) AS taste FROM reviews ORDER BY taste;
