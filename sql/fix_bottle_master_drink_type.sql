-- bottle_master の drink_type を英語表記に統一する
UPDATE bottle_master SET drink_type = 'whisky' WHERE drink_type = 'ウィスキー';
UPDATE bottle_master SET drink_type = 'whisky' WHERE drink_type = 'whiskey';
UPDATE bottle_master SET drink_type = 'sake' WHERE drink_type = '日本酒';
