-- reviews と bottle_info に drink_type カラムを追加
ALTER TABLE reviews ADD COLUMN IF NOT EXISTS drink_type text NOT NULL DEFAULT 'whisky';
ALTER TABLE bottle_info ADD COLUMN IF NOT EXISTS drink_type text NOT NULL DEFAULT 'whisky';

-- 既存レコードをウィスキーとして確定
UPDATE reviews SET drink_type = 'whisky' WHERE drink_type IS NULL OR drink_type = '';
UPDATE bottle_info SET drink_type = 'whisky' WHERE drink_type IS NULL OR drink_type = '';

-- bottle_master の drink_type は既存カラムを流用
-- sake 銘柄を登録する際は drink_type = 'sake' で upsert される
