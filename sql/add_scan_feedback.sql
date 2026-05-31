-- ocr_scan_logs にスキャン結果フィードバック用カラムを追加
ALTER TABLE ocr_scan_logs ADD COLUMN IF NOT EXISTS id uuid DEFAULT gen_random_uuid() PRIMARY KEY;
ALTER TABLE ocr_scan_logs ADD COLUMN IF NOT EXISTS selected_name text;
