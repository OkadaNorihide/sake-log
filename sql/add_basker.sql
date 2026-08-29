-- BASKER (The Busker) アイリッシュウィスキー追加
INSERT INTO bottle_master (name, category) VALUES
('バスカー アイリッシュウィスキー', 'irish'),
('Basker Irish Whiskey', 'irish'),
('バスカー シングルモルト', 'irish'),
('Basker Single Malt', 'irish'),
('バスカー シングルポットスティル', 'irish'),
('Basker Single Pot Still', 'irish'),
('バスカー アトランティックウェーブ', 'irish'),
('Basker Atlantic Wave', 'irish')
ON CONFLICT (name) DO NOTHING;
