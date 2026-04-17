-- bottle_master に romaji カラムを追加
ALTER TABLE bottle_master ADD COLUMN IF NOT EXISTS romaji text;

-- 主要銘柄のひらがな(yomi)とローマ字(romaji)を登録
-- ジャパニーズ
UPDATE bottle_master SET yomi = 'やまざき',        romaji = 'yamazaki'        WHERE name = '山崎 12年';
UPDATE bottle_master SET yomi = 'やまざき',        romaji = 'yamazaki'        WHERE name = '山崎 18年';
UPDATE bottle_master SET yomi = 'やまざき',        romaji = 'yamazaki'        WHERE name = '山崎 ノンエイジ';
UPDATE bottle_master SET yomi = 'はくしゅう',      romaji = 'hakushu'         WHERE name = '白州 12年';
UPDATE bottle_master SET yomi = 'はくしゅう',      romaji = 'hakushu'         WHERE name = '白州 18年';
UPDATE bottle_master SET yomi = 'はくしゅう',      romaji = 'hakushu'         WHERE name = '白州 ノンエイジ';
UPDATE bottle_master SET yomi = 'ひびき',          romaji = 'hibiki'          WHERE name = '響 ジャパニーズハーモニー';
UPDATE bottle_master SET yomi = 'ひびき',          romaji = 'hibiki'          WHERE name = '響 17年';
UPDATE bottle_master SET yomi = 'ひびき',          romaji = 'hibiki'          WHERE name = '響 21年';
UPDATE bottle_master SET yomi = 'たけつる',        romaji = 'taketsuru'       WHERE name = '竹鶴 ピュアモルト';
UPDATE bottle_master SET yomi = 'たけつる',        romaji = 'taketsuru'       WHERE name = '竹鶴 17年';
UPDATE bottle_master SET yomi = 'よいち',          romaji = 'yoichi'          WHERE name = '余市 ノンエイジ';
UPDATE bottle_master SET yomi = 'みやぎきょう',    romaji = 'miyagikyo'       WHERE name = '宮城峡 ノンエイジ';
UPDATE bottle_master SET yomi = 'ちた',            romaji = 'chita'           WHERE name = '知多';
UPDATE bottle_master SET yomi = 'かくびん',        romaji = 'kakubin'         WHERE name = '角瓶';
UPDATE bottle_master SET yomi = 'さんとりーかくびん', romaji = 'suntory kakubin' WHERE name = 'サントリー 角瓶';
UPDATE bottle_master SET yomi = 'いちろーずもると', romaji = 'ichiros malt'    WHERE name = 'イチローズモルト モルト＆グレーン';
UPDATE bottle_master SET yomi = 'あつけし',        romaji = 'akkeshi'         WHERE name = '厚岸 シングルモルト';
UPDATE bottle_master SET yomi = 'にっかふろむざばれる', romaji = 'nikka from the barrel' WHERE name = 'ニッカ フロム ザ バレル';

-- スコッチ
UPDATE bottle_master SET yomi = 'まっからん',      romaji = 'macallan'        WHERE name = 'マッカラン 12年 シェリーオーク';
UPDATE bottle_master SET yomi = 'まっからん',      romaji = 'macallan'        WHERE name = 'マッカラン 18年 シェリーオーク';
UPDATE bottle_master SET yomi = 'らふろいぐ',      romaji = 'laphroaig'       WHERE name = 'ラフロイグ 10年';
UPDATE bottle_master SET yomi = 'あーどべっぐ',    romaji = 'ardbeg'          WHERE name = 'アードベッグ 10年';
UPDATE bottle_master SET yomi = 'ぼうもあ',        romaji = 'bowmore'         WHERE name = 'ボウモア 12年';
UPDATE bottle_master SET yomi = 'ぐれんふぃでぃっく', romaji = 'glenfiddich'   WHERE name = 'グレンフィディック 12年';
UPDATE bottle_master SET yomi = 'ぐれんりべっと',  romaji = 'glenlivet'       WHERE name = 'グレンリベット 12年';
UPDATE bottle_master SET yomi = 'じょにーうぉーかー', romaji = 'johnnie walker' WHERE name = 'ジョニーウォーカー ブラックラベル 12年';
UPDATE bottle_master SET yomi = 'じょにーうぉーかー', romaji = 'johnnie walker blue' WHERE name = 'ジョニーウォーカー ブルーラベル';
UPDATE bottle_master SET yomi = 'しーばすりーがる', romaji = 'chivas regal'    WHERE name = 'シーバスリーガル 12年';
UPDATE bottle_master SET yomi = 'たりすかー',      romaji = 'talisker'        WHERE name = 'タリスカー 10年';
UPDATE bottle_master SET yomi = 'ぐれんもーれんじぃ', romaji = 'glenmorangie'  WHERE name = 'グレンモーレンジィ オリジナル 10年';
UPDATE bottle_master SET yomi = 'はいらんどぱーく', romaji = 'highland park'   WHERE name = 'ハイランドパーク 12年';
UPDATE bottle_master SET yomi = 'すぷりんぐばんく', romaji = 'springbank'      WHERE name = 'スプリングバンク 10年';

-- バーボン
UPDATE bottle_master SET yomi = 'ばっふぁろーとれーす', romaji = 'buffalo trace'  WHERE name = 'バッファロートレース';
UPDATE bottle_master SET yomi = 'わいるどたーきー', romaji = 'wild turkey'      WHERE name = 'ワイルドターキー 101';
UPDATE bottle_master SET yomi = 'めーかーずまーく', romaji = 'makers mark'      WHERE name = 'メーカーズマーク';
UPDATE bottle_master SET yomi = 'じむびーむ',      romaji = 'jim beam'         WHERE name = 'ジムビーム ホワイト';
UPDATE bottle_master SET yomi = 'ふぉーろーぜず',  romaji = 'four roses'       WHERE name = 'フォアローゼズ イエローラベル';
UPDATE bottle_master SET yomi = 'うっどふぉーどりざーぶ', romaji = 'woodford reserve' WHERE name = 'ウッドフォードリザーブ';
UPDATE bottle_master SET yomi = 'ぶらんとん',      romaji = 'blantons'         WHERE name = 'ブラントン オリジナル';
UPDATE bottle_master SET yomi = 'のぶくりーく',    romaji = 'knob creek'       WHERE name = 'ノブクリーク 9年';

-- アイリッシュ
UPDATE bottle_master SET yomi = 'じぇむそん',      romaji = 'jameson'          WHERE name = 'ジェムソン オリジナル';
UPDATE bottle_master SET yomi = 'ぶっしゅみるず',  romaji = 'bushmills'        WHERE name = 'ブッシュミルズ オリジナル';
UPDATE bottle_master SET yomi = 'れっどぶれすと',  romaji = 'redbreast'        WHERE name = 'レッドブレスト 12年';
UPDATE bottle_master SET yomi = 'たらもあでゅー',  romaji = 'tullamore dew'    WHERE name = 'タラモア デュー';
UPDATE bottle_master SET yomi = 'ていーりんぐ',    romaji = 'teeling'          WHERE name = 'ティーリング スモールバッチ';
UPDATE bottle_master SET yomi = 'ばすかー',        romaji = 'busker'           WHERE name = 'バスカー アイリッシュウィスキー';
UPDATE bottle_master SET yomi = 'ばすかー',        romaji = 'busker'           WHERE name = 'バスカー シングルモルト';

-- bottle_info の銘柄にも対応
UPDATE bottle_master SET yomi = 'さんとりーかくびん', romaji = 'suntory kakubin' WHERE name = 'サントリー 角瓶';
UPDATE bottle_master SET yomi = 'ひびき',             romaji = 'hibiki'          WHERE name = '響 ジャパニーズハーモニー';
UPDATE bottle_master SET yomi = 'まっからん',         romaji = 'macallan'        WHERE name = 'マッカラン 12年 シェリーオーク';
