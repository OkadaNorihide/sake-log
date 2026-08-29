-- ============================================================
-- bottle_info 一括シードデータ（全カテゴリ）
-- 生成日: 2026-04-18
-- ジャパニーズ: 63銘柄 / スコッチ: 54銘柄 / バーボン: 44銘柄 / アイリッシュ: 45銘柄
-- ============================================================


-- ============================================================
-- JAPANESE WHISKY
-- ============================================================

-- ============================================================
-- ジャパニーズウイスキー全銘柄の bottle_info INSERT文
-- 生成日: 2026-04-18
-- ============================================================

-- ===================== サントリー 山崎シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('山崎 12年',
'日本初のモルトウイスキー蒸溜所・山崎で生まれたシングルモルトの定番。ホワイトオーク・スパニッシュオーク・ミズナラなど多様な樽で熟成した原酒を丁寧に組み合わせ、繊細にして複雑な味わいを実現しています。国内外の品評会で数多くの栄誉を獲得してきた、ジャパニーズウイスキーを代表する一本。

【色】輝きのある琥珀色
【香り】熟した桃・バニラのなめらかな甘み、ほのかなスモーキーさ
【味わい】しっかりとした甘さとコク、熟した果実感、バランスの良い複雑さ
【余韻】バニラとオークが溶け合う優雅で長い余韻',
'https://www.suntory.co.jp/whisky/yamazaki/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('山崎 18年',
'酒齢18年以上のスパニッシュオーク樽熟成原酒を中心に、じっくりと後熟したフルボディタイプ。圧倒的な熟成感と奥行きのある甘さが全体を包み込む、山崎シリーズの最高峰クラス。ワールド・ウイスキー・アワードをはじめ世界的な品評会で最高賞を獲得してきた傑作です。シェリー樽由来のドライフルーツの豊潤な香りが印象的。

【色】深みのある琥珀色
【香り】ドライフルーツ・シナモン・チョコレートが複雑に絡み合う
【味わい】フルボディで濃厚、ドライフルーツの甘み、スパイシーなニュアンス
【余韻】長く伸びやかな余韻、芳醇な木香と甘さが続く',
'https://www.suntory.co.jp/whisky/yamazaki/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('山崎 25年',
'ミズナラ樽をはじめスパニッシュオーク樽・アメリカンオーク樽で超長期熟成した、酒齢25年以上の希少な原酒を厳選してブレンド。年間生産本数千数百本の限定品であり、山崎の最高傑作として世界のコレクターから垂涎の的となっている超プレミアムモルト。高貴な木香と複雑な甘さが幾重にも重なります。

【色】深く濃厚なマホガニー色
【香り】高貴なミズナラの木香、深いシェリーの甘み、熟したトロピカルフルーツ
【味わい】極めて複雑で豊かな甘さ、スパイス、オーク、ドライフルーツが渾然一体
【余韻】非常に長く伸びやかで深みある余韻、ミズナラと甘さが消え去らずに続く',
'https://www.suntory.co.jp/whisky/yamazaki/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('山崎 ノンエイジ',
'熟練のブレンダーが山崎蒸溜所産の多彩な樽熟成原酒を厳選してブレンド。年数表記なしながらも山崎らしい華やかさと甘みを備え、比較的手が届きやすい価格で山崎の世界観を体感できる一本。日本固有の発酵・蒸留・熟成環境が生み出す繊細な香味が凝縮されています。

【色】輝く琥珀色
【香り】桃・洋梨のようなフルーティーな甘み、バニラ、ほのかな樽香
【味わい】なめらかでやわらかな甘さとコク、果実感が広がる
【余韻】クリーンで心地よい甘みの余韻',
'https://www.suntory.co.jp/whisky/yamazaki/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('山崎 シェリーカスク',
'スパニッシュオーク（シェリー）樽だけで熟成した山崎の原酒を厳選した、シェリーカスク特化の限定品。シェリー樽由来の豊潤なドライフルーツ・チョコレート・スパイスの香味が余すことなく表現されています。世界のウイスキーファンから高い評価を受け、入手困難な銘柄のひとつ。

【色】深い赤みがかった琥珀色
【香り】レーズン・プラム・チョコレート・シナモンのリッチな甘み
【味わい】濃密なシェリーの甘さ、ドライフルーツ、スパイシーなアクセント
【余韻】長く続く甘さとスパイス、ビターなチョコレートの余韻',
'https://www.suntory.co.jp/whisky/yamazaki/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== サントリー 白州シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('白州 12年',
'南アルプスの麓、標高700mの「森の蒸溜所」白州で生まれたシングルモルト。清冽な水と緑豊かな環境が育む、爽快なスモーキーさとフルーティーさが共存する個性的な味わい。1994年の発売以来、山崎と並ぶサントリーシングルモルトの二大看板として世界で高く評価されています。

【色】ペールゴールド
【香り】新緑・ミント・ライム、甘く柔らかいスモーキー、爽やかな果実香
【味わい】フルーティーでコクがあり、爽快なスモーキーさが心地よい
【余韻】キレのある後口、軽やかなピートとグリーンハーブの余韻',
'https://www.suntory.co.jp/whisky/hakushu/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('白州 18年',
'酒齢18年以上の原酒を使用した白州の最上位ライン。長期熟成によって白州らしいスモーキーさと爽やかさがより深みを帯び、複雑な香味が完璧なバランスで調和しています。世界的コンペティションで数々の最高賞を獲得した、白州の実力を余すところなく体現する傑作。

【色】ゴールド
【香り】ほのかなスモーク、グレープフルーツ・柑橘系の爽やかさ、花のような繊細な甘み
【味わい】まろやかなコク、スモーキーさ、熟した果実、フルボディ
【余韻】長くクリーンな余韻、グリーンハーブとスモークが心地よく続く',
'https://www.suntory.co.jp/whisky/hakushu/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('白州 25年',
'25年以上の長期熟成を経た希少な白州原酒のみを厳選した、白州の最高峰。南アルプスの清冽な水と森の環境が育んだ、複雑かつ洗練された香味が一本に凝縮されています。深い熟成感と白州固有の爽やかさが高次元で融合する、コレクターズアイテム的存在。

【色】深いゴールド
【香り】熟した白桃・洋梨・バニラ、森のような清涼感、深みあるスモーク
【味わい】豊かなコク、スモーキーさ、クリーミーな甘み、複雑なフルーツ
【余韻】非常に長く、甘さとスモーク・ハーブが折り重なる深い余韻',
'https://www.suntory.co.jp/whisky/hakushu/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('白州 ノンエイジ',
'白州蒸溜所産の多彩な樽熟成原酒を厳選してブレンドしたノンエイジ表記の白州。甘く柔らかいスモーキーと新緑の香り、爽快な果実香が漂い、フルーティーでコクがあり後味はキレが良い。年数表記なしながら白州らしい清冽さを持ち、ハイボールにも最適な一本。

【色】ペールゴールド
【香り】グリーンアップル・ミント・柑橘の爽やかさ、ほのかなスモーク
【味わい】フルーティーで爽やか、軽やかなスモーキーさ、クリスプな甘み
【余韻】クリーンでキレのある余韻、清涼感が残る',
'https://www.suntory.co.jp/whisky/hakushu/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== サントリー 響シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('響 17年',
'山崎・白州・知多の3蒸溜所から厳選した酒齢17年以上の原酒をブレンド。ジャパニーズブレンデッドウイスキーの傑作として国内外の品評会で輝かしい受賞歴を誇ります。花のような華やかさと熟成感のある甘みが見事に調和し、響シリーズの原点とも言える洗練された一本。

【色】琥珀色
【香り】ローズ・シトラスの華やかさ、バニラの甘み、ほのかなスモーク
【味わい】豊かな熟成感、上品な甘さとコク、スムースなバランス
【余韻】なめらかで長く続く余韻、花のような香りとバニラが溶け合う',
'https://www.suntory.co.jp/whisky/hibiki/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('響 21年',
'極めてフルーティーで甘い熟成香が花を思わせる香りを持ち、なめらかな口当たりと重厚な品格、長く深みある余韻が特徴。ワールド・ウイスキー・アワード「ワールドベスト・ブレンデッドウイスキー」を過去最多の5回受賞した実績を持つ、世界が認めた響の最高峰モデルの一つ。

【色】深い琥珀色
【香り】ライチ・シトラス・白桃、香ばしいオーク、ほのかなローズ
【味わい】なめらかで品格ある重厚感、フルーティーな甘さ、複雑なスパイス
【余韻】深く長い余韻、ハチミツとフルーツが溶け合うような上品な甘み',
'https://www.suntory.co.jp/whisky/hibiki/portfolio/21years/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('響 30年',
'超長期熟成由来のモルト感が生み出す甘みある香り、豊かな花の香、なめらかな口当たり、豊潤なコクと重厚なウッディさ、長く芳しい余韻が特徴。響シリーズの最高峰として、最高級の技と時間が凝縮された別格のブレンデッドウイスキー。限定生産のため極めて希少な存在。

【色】深く濃いマホガニー色
【香り】超熟成モルトの甘く豊かな香り、豊潤なフローラル、シェリーとオークの深み
【味わい】なめらかで圧倒的なコク、豊潤でリッチ、重厚なウッディさ
【余韻】非常に長く芳しい余韻、複雑な甘さと木香が永く続く',
'https://www.suntory.co.jp/whisky/hibiki/portfolio/30years/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('響 ブレンデッドモルト',
'山崎・白州の2つのモルト蒸溜所から厳選したモルト原酒のみをブレンドした、響ブレンデッドモルト。グレーン原酒を使用しないピュアモルトタイプで、モルト原酒由来の豊かな果実感とスモーキーさが存分に引き出されています。響の品格を保ちながら個性的な香味が楽しめる一本。

【色】琥珀色
【香り】洋梨・白桃のフルーティーな甘み、フローラルな華やかさ、ほのかなスモーク
【味わい】モルト由来の豊かな甘さとコク、スムースな口当たり、複雑な果実感
【余韻】やわらかくフルーティーな余韻、甘さとほのかなスモークが続く',
'https://www.suntory.co.jp/whisky/hibiki/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== ニッカ 竹鶴シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('竹鶴 17年',
'日本のウイスキーの父・竹鶴政孝の名を冠したピュアモルトウイスキー。余市と宮城峡の2蒸溜所のモルト原酒をバッティングし、17年以上の熟成感あふれる深みある味わいを実現。ワールド・ウイスキー・アワード最高賞など国際的な評価を獲得してきた名作ピュアモルト。

【色】深い琥珀色
【香り】洋梨・リンゴなど豊かな果実香、ほのかなピート、深みある樽香
【味わい】まろやかでコクがあり、モルトの甘さとほのかなスモーキーさが調和
【余韻】甘くほろ苦い余韻、オークとピートが溶け合うように続く',
'https://www.nikka.com/brands/taketsuru/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('竹鶴 21年',
'余市と宮城峡のモルト原酒を21年以上熟成させ、竹鶴政孝が理想とした「重厚にして繊細、コクと香りの絶妙なバランス」を体現する最高クラスのピュアモルト。国際的品評会で最高賞を重ね、世界のウイスキーファンから絶大な評価を得ている傑作。

【色】深い琥珀色
【香り】熟した果実・ドライフルーツ・チョコレート、ピートの奥深い香り
【味わい】フルボディで豊かなコク、複雑な甘み、深みあるスモーキーさ
【余韻】長く余韻深く、甘さとスモークが複雑に絡み合いながら続く',
'https://www.nikka.com/brands/taketsuru/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('竹鶴 25年',
'25年以上の長期熟成を経た余市・宮城峡の希少なモルト原酒のみを使用した、竹鶴シリーズの頂点に立つ限定品。半世紀近い歳月が凝縮されたような芳醇さと複雑さは、まさに竹鶴政孝の夢とウイスキーへの情熱が結実した傑作。入手困難な最上位モデル。

【色】深くリッチな琥珀色
【香り】ドライフルーツ・チョコレート・コーヒー、熟成感あふれる複雑な香り
【味わい】極めて豊かなコクと複雑な甘み、濃密な余市らしいスモーキーさ
【余韻】非常に長い余韻、ビターチョコとスモークが溶け合うように残る',
'https://www.nikka.com/brands/taketsuru/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('竹鶴 ピュアモルト',
'日本のウイスキーの父・竹鶴政孝の名を冠したピュアモルト。余市蒸溜所と宮城峡蒸溜所のモルト原酒を厳選してバッティングした、グレーンを一切使わないモルトウイスキーのみのブレンド。竹鶴政孝が目指した「日本人の心に響くウイスキー」の哲学を受け継いだ定番品。

【色】琥珀色
【香り】洋梨・リンゴのフレッシュな果実感、ほのかなピート、バニラの甘み
【味わい】なめらかなコク、モルト由来の甘さ、軽やかなスモーキーさ
【余韻】甘くほろ苦い余韻、オーク香とほのかなピートが続く',
'https://www.nikka.com/brands/taketsuru/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== ニッカ 余市シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('余市 10年',
'北海道・余市蒸溜所が誇るシングルモルトの10年熟成品。石炭直火蒸留という伝統製法が生み出す、力強いピートと豊かな果実の甘みが余市らしさの核心。スコティッシュスタイルを継承しながら北海道の自然環境が育んだ個性がきらりと光る、バランス感ある一本。

【色】ゴールド
【香り】甘いモルト、フルーティーな果実感、ほのかなピートとスモーク
【味わい】骨格のある甘さ、しっかりとしたピーティーさ、果実のコク
【余韻】スモーキーで力強い余韻、甘さとピートが余韻を豊かにする',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('余市 12年',
'余市蒸溜所産12年熟成のシングルモルト。石炭直火蒸留と北海道の冷涼な熟成環境が産み出すリッチなモルト感と骨格のある甘み、力強いスモーキーさが12年という歳月をかけて深化しています。余市らしい男性的なキャラクターが一層磨かれた熟成感ある逸品。

【色】ゴールドから琥珀色
【香り】リッチな果実の甘み、力強いピートとスモーク、バニラ
【味わい】骨太でリッチ、モルトと甘み、存在感あるスモーキーさ
【余韻】力強く長い余韻、スモーク・ピートと甘みが折り重なる',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('余市 15年',
'余市蒸溜所産15年熟成のシングルモルト。15年の熟成を経てより深みと複雑さを増した余市の個性、石炭直火蒸留由来の骨太な甘み、リッチなフルーツ感、力強いスモーキーさが高次元で融合。ニッカウヰスキーが誇る傑出したシングルモルトのひとつ。

【色】深いゴールドから琥珀色
【香り】ドライフルーツ・チョコレート・バニラ、重厚なピートとスモーク
【味わい】フルボディ、豊かな甘み、オイリーな質感、深みあるピーティーさ
【余韻】長く重厚な余韻、ビターチョコとスモークが複雑に続く',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('余市 20年',
'余市蒸溜所産20年熟成の、余市シリーズの最高峰クラス。20年という長い歳月が生み出す圧倒的な熟成感と複雑さは別格で、石炭直火蒸留の骨太な個性が最大限に引き出されています。余市の真髄を体感できる希少な限定品として高い人気を誇る。

【色】深い琥珀色
【香り】熟したドライフルーツ・レーズン・チョコレート、深みあるスモークとピート
【味わい】豊潤で複雑、濃密な甘さとコク、圧倒的なスモーキーさ
【余韻】非常に長い余韻、甘さ・スモーク・ビター感が複雑に絡み合い続く',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('余市 ノンエイジ',
'余市蒸溜所の多様な樽熟成モルト原酒から厳選してブレンドしたシングルモルト。年数表記はないながらも余市らしい力強い個性、石炭直火蒸留由来のスモーキーさとリッチな甘みが凝縮されています。ニッカの伝統的な製法を今に伝えるシングルモルトの定番。

【色】ゴールド
【香り】甘いモルト・リッチな果実感、スモーク・ピートの力強い香り
【味わい】骨格ある甘さ、しっかりとしたスモーキーさ、フルボディ
【余韻】スモーキーで長い余韻、甘みとピートが溶け合うように続く',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== ニッカ 宮城峡シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('宮城峡 10年',
'宮城県・宮城峡蒸溜所産10年熟成のシングルモルト。スチーム間接蒸留による優雅でフルーティーな香りと、やわらかくエレガントな口当たりは余市とは対称的な上品さを持ちます。リンゴや洋梨のようなフレッシュな果実香が10年の熟成でより深みを帯びた一本。

【色】ペールゴールド
【香り】リンゴ・洋梨・バニラのフルーティーな甘み、フローラルな上品さ
【味わい】やわらかくエレガント、軽やかな甘さ、みずみずしい果実感
【余韻】上品でクリーンな余韻、バニラとフルーツがやわらかく続く',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('宮城峡 12年',
'宮城峡蒸溜所産12年熟成のシングルモルト。やわらかくエレガントな宮城峡の個性が12年の熟成でよりふくよかになり、フルーティーで上品な甘みとバランスのとれた複雑さを持ちます。余市とは対照的な優雅さが持ち味の、ニッカを代表するシングルモルト。

【色】ゴールド
【香り】熟した洋梨・バニラ・フローラル、シェリー樽由来のほのかな甘み
【味わい】まろやかでエレガント、甘くフルーティーなコク、やさしい木香
【余韻】やわらかく上品な余韻、フルーツとバニラが香るように続く',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('宮城峡 15年',
'宮城峡蒸溜所産15年熟成のシングルモルト。15年の熟成を経た宮城峡らしい上品な甘みとフルーティーさに、長期熟成ならではの複雑さと深みが加わった傑出した一本。エレガントなキャラクターが際立つ宮城峡の実力を存分に発揮しています。

【色】ゴールドから琥珀色
【香り】熟したトロピカルフルーツ・洋梨・バニラ、オークの上品な香り
【味わい】なめらかでリッチ、フルーティーな甘みと複雑なコク
【余韻】長く優雅な余韻、甘さとフルーツが静かに溶けていく',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('宮城峡 ノンエイジ',
'宮城峡蒸溜所の多様な原酒から厳選してブレンドしたシングルモルト。年数表記なしながら、スチーム間接蒸留が生み出すエレガントで華やかなフルーティーさと上品な甘みは宮城峡らしさそのもの。余市とは対照的な繊細さが楽しめる定番品。

【色】ペールゴールド
【香り】リンゴ・洋梨・フローラルな上品な甘み、やさしいバニラ
【味わい】やわらかくエレガント、みずみずしい果実感と甘さ
【余韻】クリーンで上品な余韻、フルーティーな甘みが残る',
'https://www.nikka.com/brands/yoichi_miyagikyo/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== ニッカ その他 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ニッカ フロム ザ バレル',
'カスクストレングスに近い高アルコール51.4%でボトリングされ、まるで樽から直接注いだような濃厚な味わいが特長のブレンデッドウイスキー。モルトとグレーンをブレンド後、再度樽に戻して「後熟」させる独自製法を採用。世界の名だたる品評会で最高賞を獲得し、そのコストパフォーマンスの高さで世界中のウイスキーファンから熱狂的な支持を得ています。

【色】深いアンバー
【香り】濃厚なモルトの甘み、カラメル・ドライフルーツ・バニラ、ほのかなスモーク
【味わい】圧倒的なコクとリッチな甘み、スパイシーさ、力強い余市原酒の個性
【余韻】長くパワフルな余韻、甘さとスパイスが複雑に続く',
'https://www.nikka.com/products/blended/fromthebarrel/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ニッカ ピュアモルト',
'余市・宮城峡の2蒸溜所のモルト原酒だけをバッティングした、グレーンウイスキーを使わないピュアモルトウイスキー。余市の力強さと宮城峡のエレガントさが融合した、ニッカを代表するバランスの良いモルトウイスキー。ブラックラベル・ホワイトラベルなど複数のラインナップを展開。

【色】琥珀色
【香り】洋梨・リンゴのフルーティーな香り、バニラ、ほのかなスモーク
【味わい】まろやかなコク、モルト由来の甘さとほのかなスモーキーさ
【余韻】甘くやわらかな余韻、ほのかなピートとオーク香が続く',
'https://www.nikka.com/products/malt/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ニッカ セッション',
'余市蒸溜所と宮城峡蒸溜所の2つのジャパニーズモルト原酒に、ニッカが保有するスコットランドのベン・ネヴィス蒸溜所のスコティッシュモルト原酒を加えてブレンドした革新的なブレンデッドモルト。異なる国の個性を活かしたニッカの新しいフラッグシップ。

【色】ゴールド
【香り】柑橘系の爽やかさ、紅茶のようなエレガントな香り、華やかなフルーティーさ
【味わい】軽快で华やか、フルーティーな甘さと余市由来のほのかなビター感
【余韻】爽やかでクリーンな余韻、ピーティーなビターが心地よく続く',
'https://www.nikka.com/products/malt/session/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== ブラックニッカシリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブラックニッカ クリア',
'ノンピートモルトを使用し、クリアで飲みやすいハイボール向けに設計されたブレンデッドウイスキー。独特のクセがなくすっきりとした飲み口が特長で、ハイボールや水割り・炭酸割りで爽快に楽しめます。日本で長年親しまれてきたブラックニッカシリーズの入門編として広く愛されています。

【色】ペールゴールド
【香り】やわらかくソフトな甘み、ほのかなバニラ、クリーンな穀物香
【味わい】すっきりとクリア、軽やかな甘み、ミルドでドライ
【余韻】クリーンでキレのある後口、スッキリとした余韻',
'https://www.nikka.com/brands/blacknikkaclear/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブラックニッカ ディープブレンド',
'新樽熟成モルトが生み出す甘くまろやかな香りと、深みのあるコクが特長のブレンデッドウイスキー。ウッディな樽由来のノートにほのかなピートの香りが加わり、ブラックニッカシリーズの中でも深い味わいを志向したモデル。ロックやストレートでじっくり楽しみたい一本。

【色】アンバー
【香り】新樽由来の甘くまろやかな香り、ウッディな樽香、ほのかなスモーク
【味わい】コクがあり深みある甘さ、まろやかな口当たり、適度なスパイス感
【余韻】甘くほろ苦い余韻、ウッディさとピートが残る',
'https://www.nikka.com/products/blended/blackdeep/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブラックニッカ リッチブレンド',
'シェリー樽熟成モルト原酒と樽熟成グレーンウイスキーをブレンドし、豊かな甘みとまろやかさを実現したブレンデッドウイスキー。ブラックニッカシリーズの中でもシェリー由来のリッチな甘みとフルーティーさが際立ち、食後酒としても楽しめる深みある一本。

【色】琥珀色
【香り】シェリー由来のドライフルーツ・バニラの甘い香り、まろやかなウッド
【味わい】リッチでまろやか、シェリーの豊かな甘さ、フルーティーなコク
【余韻】やわらかくフルーティーな余韻、甘さとオーク香が溶け合う',
'https://www.nikka.com/products/blended/blackrich/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブラックニッカ スペシャル',
'ブラックニッカシリーズの中でもモルト原酒の比率を高め、厚みとコクを強調したブレンデッドウイスキー。ニッカの2蒸溜所のモルト原酒をベースにグレーン原酒をブレンドし、スタンダード品よりも一段上の飲みごたえを実現。日本のウイスキー文化に根ざしたロングセラー品。

【色】琥珀色
【香り】バニラ・カラメルの甘み、モルトの香ばしさ、やわらかなオーク香
【味わい】厚みのある甘さとコク、バランスの良いモルト感
【余韻】まろやかでやわらかい余韻、甘みとオークが続く',
'https://www.nikka.com/products/blended/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== スーパーニッカ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('スーパーニッカ',
'竹鶴政孝が1962年に完成させた、日本のブレンデッドウイスキーの最高傑作のひとつ。亡き妻リタへの想いを込め、当時の日本最高の技術を尽くして完成させた至高のブレンド。余市蒸溜所のモルト原酒をメインに、香りと味わいの両立を追求した歴史的名作。現在も変わらぬ品質で愛され続けています。

【色】深い琥珀色
【香り】洋梨・リンゴ・バニラの甘く上品な香り、ほのかなスモーク
【味わい】なめらかでコク深い甘さ、まろやかなモルト感、絶妙なバランス
【余韻】まろやかで長く続く余韻、甘さとほのかなスモークが溶け合う',
'https://www.nikka.com/products/blended/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== サントリー その他 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('知多',
'愛知県知多半島に建つ知多蒸溜所で造られる、日本初のシングルグレーンウイスキー。トウモロコシや麦芽を原料に、3タイプの蒸留設備と多彩な樽を組み合わせ、軽やかでなめらかな飲み心地を実現。2015年の発売以来、グレーンウイスキーの新たな可能性を世界に示した革新的な一本。

【色】ペールゴールド
【香り】軽やかなバニラ・ハニー・ピーチ、みずみずしいフルーティーさ
【味わい】なめらかで軽快、ほのかな甘みとやわらかなコク
【余韻】クリーンで爽やかな余韻、甘みとバニラが軽やかに続く',
'https://www.suntory.co.jp/whisky/chita/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('トリス クラシック',
'1946年の誕生以来、日本のウイスキー文化を支え続けてきた大衆ウイスキーの代名詞。価格を抑えながらもサントリーの技術が注がれた飲みやすいブレンデッドウイスキーで、ハイボールとの相性が抜群。アンクル・トリスのキャラクターと共に、日本のウイスキー普及の歴史を歩んできた歴史的銘柄。

【色】ペールゴールド
【香り】軽やかな甘み、やわらかなバニラ・穀物系の清潔な香り
【味わい】すっきりとした甘さ、マイルドで飲みやすい軽快な口当たり
【余韻】クリーンで短め、爽快感のある後口',
'https://www.suntory.co.jp/whisky/torys/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('角瓶',
'1937年の誕生以来、日本の食卓に寄り添い続ける国民的ブレンデッドウイスキー。山崎・白州蒸溜所のバーボン樽原酒をバランスよく配合し、甘やかな香りと厚みのあるコク、ドライな後口が特長。四角いボトルのフォルムは薩摩切子にヒントを得た亀甲模様が刻まれた、日本のウイスキーを象徴するデザイン。

【色】自然な琥珀色
【香り】甘やかでまろやか、バニラとキャラメルのニュアンス
【味わい】厚みのあるコク、やわらかな甘さ
【余韻】ドライでクリーンな後口',
'https://www.suntory.co.jp/whisky/kakubin/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('サントリー オールド',
'1940年に誕生し、1970〜80年代の高度成長期に「ダルマ」の愛称で圧倒的な人気を誇ったサントリーの看板ブランド。丸みのあるボトルフォルムは今も変わらず、モルトとグレーンを熟練のブレンダーが丁寧に調和させた豊かなコクと甘みが特長。日本のウイスキー文化の象徴的存在。

【色】琥珀色
【香り】甘くまろやかなモルト香、バニラ・カラメル・やわらかなオーク
【味わい】まろやかでバランスの良いコク、やわらかな甘さ
【余韻】まろやかでほんのり甘い余韻、オーク香が穏やかに続く',
'https://www.suntory.co.jp/whisky/old/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('サントリー リザーブ',
'山崎産モルト原酒を核に、特選原酒を贅沢にブレンドしたプレミアムブレンデッドウイスキー。1969年の発売当初から「リザーブ＝特選品」の名にふさわしい品質にこだわってきたロングセラー品。芳醇な香りとなめらかなコクが食中酒としても高い評価を得ています。

【色】琥珀色
【香り】芳醇なモルト香、バニラ・蜂蜜・熟した果実のやわらかな甘み
【味わい】なめらかで豊かなコク、甘さとほのかな渋み、バランスの良さ
【余韻】やわらかく上品な余韻、甘さとオーク香が穏やかに残る',
'https://www.suntory.co.jp/whisky/reserve/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('サントリー ローヤル',
'1960年に「日本のウイスキーの最高傑作を」という目標のもと、鳥井信治郎の遺志を継いで作られた最高級ブレンデッドウイスキー。ミズナラ（日本産オーク）樽熟成原酒を贅沢に使用し、日本固有の「和」のテイストが随所に感じられる伝統の逸品。洋酒文化が花開いた昭和を彩ったサントリーの代表銘柄。

【色】深い琥珀色
【香り】ミズナラ由来の伽羅・白檀のような高貴な香り、ハチミツ・バニラ
【味わい】なめらかで品格ある深みとコク、甘さとほのかなスパイス
【余韻】長く上品な余韻、ミズナラ由来のオリエンタルな木香が穏やかに続く',
'https://www.suntory.co.jp/whisky/royal/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== イチローズモルトシリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('イチローズモルト モルト＆グレーン',
'埼玉県秩父の肥土伊知郎氏が手がける「イチローズモルト」のブレンデッドウイスキー。秩父蒸溜所産のモルト原酒と国内外のグレーン原酒を丁寧にブレンドし、世界中のウイスキーファンを魅了する仕上がり。リーフラベルで知られるイチローズモルトシリーズの中で最もアクセスしやすい人気モデル。

【色】ゴールドから琥珀色
【香り】バニラ・カラメル・ほのかなフルーツ、秩父モルト由来の爽やかな麦感
【味わい】甘くなめらか、やわらかなコクとグレーン由来の軽快さ
【余韻】やわらかく甘い余韻、バニラとオーク香が穏やかに続く',
'https://www.ichiros.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('イチローズモルト ワインウッドリザーブ',
'秩父蒸溜所のモルト原酒をワイン樽で後熟させた、フルーティーで個性的な仕上がりのブレンデッドウイスキー。ワイン樽由来の赤い果実の香りとスパイス感が秩父モルトの麦芽感と融合し、唯一無二の複雑さを生み出しています。赤みを帯びたボトルカラーも印象的な人気モデル。

【色】赤みを帯びたアンバー
【香り】ラズベリー・ストロベリーのような赤い果実の甘酸っぱい香り、バニラ・スパイス
【味わい】ビターチョコ・オレンジピール・フルーティーさ、ほのかなスパイス
【余韻】ビターでフルーティーな余韻、ワイン樽由来のタンニンが心地よく続く',
'https://www.ichiros.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('イチローズモルト ダブルディスティラリーズ',
'羽生蒸留所と秩父蒸溜所、2つの蒸留所のモルト原酒をバッティングした「ダブルディスティラリーズ（ふたつの蒸留所）」。廃業した羽生蒸留所の貴重なモルト原酒と秩父産原酒が一本に凝縮されており、スパイシーさと甘さが見事に調和した複雑な味わいが楽しめます。緑ラベルで知られるリーフシリーズの個性派。

【色】ゴールドから琥珀色
【香り】フルーティーな甘み、スパイシーなアクセント、ほのかなバニラと麦感
【味わい】スパイシーさと甘さのバランス、なめらかなコク、複雑さ
【余韻】スパイシーで余韻深く、甘みとビター感が長く続く',
'https://www.ichiros.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 秩父 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('秩父 ザ・ファースト',
'2011年、秩父蒸溜所で蒸留した原酒から作られた最初のシングルモルトウイスキー。7,400本出荷と同時に国内外で即日完売となった伝説の初リリース。ミズナラ・バーボン・シェリーの各樽原酒をバッティングし、若いながらも鮮烈な秩父の個性が凝縮されています。ジャパニーズクラフトウイスキーの歴史に刻まれた記念碑的な一本。

【色】ゴールド
【香り】爽やかな麦芽の香り、フルーティーな甘み、ほのかなミズナラ香
【味わい】若々しくフレッシュな甘さ、活き活きとした麦感、軽やかなスパイス
【余韻】フレッシュでクリーン、甘さとほのかな木香が残る',
'https://www.ichiros.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('秩父 オン・ザ・ウェイ',
'秩父蒸溜所の成長過程を表す「道の途中で」という意味を持つシングルモルト。ファーストフィルのバーボンバレルで熟成した若い原酒主体ながら、秩父らしい鮮烈なフルーティーさと麦芽の甘みが特長。秩父の成長を記録する限定品として国内外のコレクターに高い評価を受けています。

【色】ペールゴールド
【香り】フレッシュな洋梨・バナナ、爽やかな麦芽の甘み、バニラ
【味わい】若くフレッシュ、バーボン樽由来のバニラと甘さ、麦のコク
【余韻】フレッシュでクリーン、甘さと麦感が爽やかに続く',
'https://www.ichiros.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== マルス（本坊酒造）シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('駒ヶ岳',
'南アルプス中央アルプスの麓、標高798mのマルス駒ヶ岳蒸溜所で生まれるシングルモルトウイスキー。高原の冷涼な気候と清らかな水が育む、エレガントな花香と果実の甘みが特長。本坊酒造が手がけるマルスウイスキーのフラッグシップ銘柄として、国内外の品評会で数多くの受賞歴を誇る。

【色】ゴールドから琥珀色
【香り】リンゴティー・アプリコット・熟した柿、エレガントなフローラル
【味わい】なめらかな口当たり、フルーティーな甘み、きめ細かいコク
【余韻】上品で心地よい余韻、フルーツと甘みがやわらかく続く',
'https://www.hombo.co.jp/item/whisky/komagatake/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('本坊酒造 マルス シングルモルト',
'鹿児島の本坊酒造が誇るマルスブランドのシングルモルトウイスキー。信州駒ヶ岳蒸溜所と鹿児島津貫蒸溜所の2蒸溜所を持ち、それぞれの個性ある原酒から生まれる多彩なシングルモルトを展開。日本最南端・最西端の蒸溜所として独自の熟成環境が育む香味が世界から注目されています。

【色】ゴールドから琥珀色
【香り】フルーティーな果実香、バニラ・キャラメル、南国を思わせる甘み
【味わい】なめらかで甘くコクがあり、蒸溜所由来の個性ある風味
【余韻】やわらかく心地よい余韻、甘さとフルーティーさが続く',
'https://www.hombo.co.jp/item/whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('マルス ツインアルプス',
'信州・南アルプスと中央アルプスという「ふたつのアルプス」にちなんで名付けられたマルスの代表的ブレンデッドウイスキー。駒ヶ岳蒸溜所産モルト原酒とグレーン原酒をバランスよくブレンドし、山麓の清冽さを表現。リーズナブルながらマルスらしいフルーティーさが楽しめるエントリーモデル。

【色】ゴールド
【香り】フルーティーな甘み、バニラ・洋梨・りんごのようなフレッシュな香り
【味わい】やわらかく軽快な甘さ、なめらかな口当たり、バランスの良さ
【余韻】クリーンでさわやかな余韻、甘さとフルーティーさが残る',
'https://www.hombo.co.jp/item/whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 嘉之助蒸溜所 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('嘉之助 シングルモルト',
'鹿児島県日置市の嘉之助蒸溜所が2017年の設立以来醸し出すシングルモルトウイスキー。140年以上の焼酎醸造技術を持つ小正醸造のDNAを受け継ぎ、3基のポットスチルと多彩な樽熟成で独自の南九州スタイルを確立。ハチミツ・バナナ・レモンティーのような親しみやすい香味が特長。

【色】アンバー
【香り】ハチミツ・バナナ・レモンティー・キャラメル、やわらかな南国の甘み
【味わい】カリン飴・シナモン・ジンジャーのスパイシーな甘さ、滑らかなコク
【余韻】エレガントな甘さとほろ苦さが長く続くスムースなフィニッシュ',
'https://kanosuke.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 厚岸蒸溜所 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('厚岸 シングルモルト',
'北海道厚岸の海霧と泥炭（ピート）に育まれるアイラ島スタイルのジャパニーズシングルモルト。厚岸産ピートを使用した独自の製法で、スコティッシュスタイルに北海道の個性を融合。二十四節気シリーズをはじめ多彩な限定品が国内外で高い評価を獲得している、日本のクラフトウイスキーを代表する蒸溜所。

【色】ゴールドから琥珀色
【香り】ほのかな潮の風、爽やかなピート・スモーク、フルーティーな甘み
【味わい】スモーキーさとフルーティーな甘みのバランス、なめらかなコク
【余韻】クリーンで塩気を帯びたスモーキーな余韻が心地よく続く',
'https://akkeshi-distillery.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('厚岸 大寒',
'厚岸蒸溜所の二十四節気シリーズのひとつ「大寒（だいかん）」。1年で最も寒さが厳しいとされる大寒の節気にちなんで名付けられた限定品。厚岸産ピートを使った力強いスモーキーさと北海道の冬を思わせる引き締まった味わいが特長。バーボン樽とシェリー樽の原酒を組み合わせた深みある一本。

【色】ゴールドから深い琥珀色
【香り】力強いピートスモーク、潮風のような塩気、バニラと果実の甘み
【味わい】スモーキーでドライ、北海道の冬を思わせる引き締まった甘さとコク
【余韻】力強く長いスモーキーな余韻、塩気と甘みが交互に現れる',
'https://akkeshi-distillery.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('厚岸 雨水',
'厚岸蒸溜所の二十四節気シリーズ「雨水（うすい）」。雪から雨へと変わり大地が潤い始める節気にちなみ、柔らかくみずみずしい表情を持つ限定品。厚岸らしいピートスモークの骨格を保ちながら、フルーティーでやわらかな甘みがまるで春の始まりのような清潔感を表現している。

【色】ゴールド
【香り】やわらかなピートスモーク、みずみずしい果実の甘み、ほのかな潮香
【味わい】なめらかでやわらか、フルーティーな甘さとスモーキーさの調和
【余韻】クリーンでやわらかな余韻、ほのかなスモークと甘みが続く',
'https://akkeshi-distillery.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('厚岸 啓蟄',
'厚岸蒸溜所の二十四節気シリーズ「啓蟄（けいちつ）」。冬眠していた虫たちが目覚める春の節気にちなんだ限定品で、インターナショナルスピリッツチャレンジ（ISC）2024でゴールドを受賞した評価の高い一本。生き生きとした果実感とスモーキーさが春の目覚めを表現している。

【色】ゴールドから琥珀色
【香り】活き活きとした柑橘・フルーティーな甘み、爽やかなピートスモーク
【味わい】フレッシュな果実感とスモーキーさ、バランスの良いコク
【余韻】爽やかなスモーキーな余韻、フルーツと甘みが春風のように続く',
'https://akkeshi-distillery.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 三郎丸蒸留所 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('三郎丸 0 THE FOOL',
'富山県砺波市の若鶴酒造・三郎丸蒸留所が2020年にリリースしたシングルモルトウイスキー。タロットカードの「愚者（フール）」を冠し、「ゼロからの出発」を意味する記念すべき最初のシングルモルト。北陸の清冽な水と冷涼な気候が育む、若々しさの中にも骨格のある味わいが特長。

【色】ゴールド
【香り】フレッシュな麦芽・バニラ・ほのかなフルーティーさ、砥波平野を思わせる清潔感
【味わい】若くフレッシュ、麦芽由来のやわらかな甘みとコク
【余韻】クリーンでフレッシュな余韻、甘さと麦感が続く',
'https://www.wakatsuru.co.jp/saburomaru/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('三郎丸 I THE MAGICIAN',
'三郎丸蒸留所のシングルモルト第2弾「魔術師（マジシャン）」。2018年蒸留の原酒を使用し、バーボン・シェリー・ミズナラの各樽原酒をバッティング。「新たな一歩・変容・技術・新しいステージ」をキーワードに、THE FOOLから一段成長した三郎丸の実力を示す一本として国内外で高評価。

【色】ゴールドから琥珀色
【香り】バニラ・洋梨・蜂蜜のフルーティーな甘み、ほのかなスパイス
【味わい】なめらかなコク、甘みとスパイシーさのバランス、成熟した複雑さ
【余韻】やわらかく甘い余韻、スパイスと麦感が心地よく続く',
'https://www.wakatsuru.co.jp/saburomaru/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 長濱蒸溜所 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('長濱 アマハガン シングルモルト',
'滋賀県長浜市の長濱浪漫ビールが手がける「AMAHAGAN（アマハガン）」ブランドのシングルモルト。醸造所発のクラフトウイスキーとして、世界各地の原酒を長浜でブレンド・熟成させたワールドモルトも展開。ミズナラウッドフィニッシュなど個性的な製品が国内外で注目を集めている。

【色】ゴールドから琥珀色
【香り】フルーティーで華やか、バニラ・洋梨・花のようなフレッシュな甘み
【味わい】やわらかくなめらか、フルーティーな甘さと心地よいコク
【余韻】クリーンで上品な余韻、フルーツと甘みが穏やかに続く',
'https://www.romanbeer.com/item/amahagan/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 静岡蒸溜所 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('静岡 プロローグ',
'ガイアフロー静岡蒸溜所が2020年にリリースした初のシングルモルト「プロローグK」と「プロローグW」に代表される、静岡蒸溜所の原点。200以上の3年熟成樽から厳選した31樽の原酒をバッティング。日本産麦芽のソフトでデリケートな味わいと樽のウッディさが絶妙に溶け合い、ほど良いピート香が心地よい余韻を演出する傑作。

【色】ゴールド
【香り】日本産麦芽由来のやわらかな甘み、フルーティーなエステル香、ほのかなピート
【味わい】デリケートでやわらかな甘さ、フルーティーなコク、軽やかなスモーキーさ
【余韻】心地よいピート香とやわらかな甘みが清涼感とともに続く',
'https://shizuoka-distillery.jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 江井ヶ嶋酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('江井ヶ嶋 シングルモルト',
'兵庫県明石市に1888年創業の江井ヶ嶋酒造が手がけるシングルモルトウイスキー。明石の海に最も近い場所に立つ蒸溜所で、潮風が漂う環境の中で熟成した個性的な風味が特長。複数の樽原酒を組み合わせた複雑な香味と、長年の醸造経験が培った技術が光る地ウイスキーの傑作。

【色】アンバーゴールド
【香り】フルーティーで甘く、オレンジ・バナナ・洋梨、蜂蜜とバニラクリーム
【味わい】フルーティーな甘みと微かな酸味、やわらかな樽のニュアンス
【余韻】やわらかく上品な余韻、フルーツと甘みが穏やかに続く',
'https://www.ei-sake.jp/whisky.html', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 宮下酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('岡山 シングルモルト',
'岡山県産大麦麦芽を使用し、ブランデー樽・シェリー樽・ミズナラ樽の3種をバッティングしたトリプルカスクの岡山シングルモルト。宮下酒造がドイツ・ホルスタイン社製ハイブリッドスチルを導入し本格的に製造。東京ウイスキー＆スピリッツコンペティションで金賞を受賞し、大谷翔平選手が贈り物に選んだことでも話題に。

【色】アンバーゴールド
【香り】しっとりしたバニラ、加水するとチョコレートのような甘みが増す
【味わい】アーモンドの香ばしさ、ブランデーの豊かな味わい、わずかにピート
【余韻】ナッツのような余韻とシェリー樽の香りが心地よく残る',
'https://www.msb.co.jp/whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 笹の川酒造 / 安積蒸溜所 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('安積 シングルモルト',
'福島県郡山市の笹の川酒造が2016年に再始動させた安積蒸溜所のシングルモルト。ワールド・ウイスキー・アワード2022でベスト・ジャパニーズ・シングルモルトを受賞した傑作。磐梯山系の清冽な伏流水と福島の四季が育む、穏やかにピーティーで柑橘感ある個性的な香味が特長。

【色】ゴールド
【香り】穏やかにピーティー、シトラス・グレープフルーツのシャープな柑橘香、ほのかな麦芽香
【味わい】ドライでミネラリー、バランスの良いコクとほのかなピーティーさ
【余韻】心地よいピートとシトラスの余韻が長く続く',
'https://www.sasanokawa.co.jp/asaka-distillery/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('笹の川 チェリーウッド',
'笹の川酒造が昭和21年から製造してきた「チェリーウイスキー」の伝統を受け継ぐブレンデッドウイスキー。創業時から続く日本の地ウイスキー文化を今に伝える貴重な銘柄で、国産麦芽・グレーン原酒をブレンド。チェリーウッド（桜の木）を想わせる名前の通り、ほんのりと甘く穏やかな飲み口が特長。

【色】ゴールドから琥珀色
【香り】やわらかな甘み、バニラ・キャラメル、ほのかな樽香
【味わい】まろやかでやわらかな甘さ、飲みやすく親しみやすい口当たり
【余韻】やわらかく穏やかな余韻、甘さとほのかな木香が残る',
'https://www.sasanokawa.co.jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== 明石ウイスキー =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('明石 シングルモルト',
'日本で最も海に近い蒸溜所として知られる兵庫県明石市・江井ヶ嶋酒造の「あかし」ブランドのシングルモルトウイスキー。明石海峡の潮風と海の影響を受けた独自の熟成環境が個性的な香味を育む。スウィートでウッディな香りに、ミディアムライトでスパイシー、わずかにピーティーな味わいが特長。

【色】ゴールド
【香り】スウィートでウッディ、潮風のほのかな塩気、バニラ・フルーティーな甘み
【味わい】ミディアムライト、上品でスパイシー、わずかにピーティーなアクセント
【余韻】爽やかでクリーンな余韻、海風を思わせるミネラル感と甘みが続く',
'https://www.ei-sake.jp/smakashi.html', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ===================== オールドパー =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('オールドパー 12年',
'152歳まで生きたという伝説の長寿者トーマス・パーに因んで名付けられた、スペイサイドの「クラガンモア」をキーモルトとするブレンデッドスコッチウイスキー。明治時代に岩倉使節団が持ち帰って以来、日本の政財界人に愛飲されてきた歴史的銘柄。傾けても倒れないクリスタルカットの四角いボトルが特徴的。

【色】ゴールドから琥珀色
【香り】リンゴ・熟したみかん・蜂蜜のフルーティーな甘さ、ほのかなスモーク
【味わい】熟したオレンジの甘さとほろ苦さ、ソフトなスモーキーさ、上品なバランス
【余韻】べっ甲飴・オランジェット・やや焦げたビターのような複雑な余韻',
'https://www.diageo.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ============================================================
-- SCOTCH WHISKY
-- ============================================================

-- SCOTCH WHISKY bottle_info INSERT
-- 生成日: 2026-04-18

-- ============================================================
-- スコッチウィスキー bottle_info INSERT文
-- ============================================================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンフィディック 12年', '【色】輝くブライトゴールド。【香り】熟した洋梨、白桃、バニラの甘い香りに春の花々を思わせるフローラルなアロマが広がる。【味わい】みずみずしい洋梨の果実味とクリーミーなバニラ、ほのかなオーク香が調和した軽やかで親しみやすい口当たり。モルトの甘さがふんわりと広がる。【余韻】すっきりとしたフルーティな余韻が続き、クリーンで後味も爽やか。世界で最も売れているシングルモルトの入門編にふさわしい一本。', 'https://www.suntory.co.jp/whisky/glenfiddich/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンフィディック 15年', '【色】深みのあるゴールド。【香り】シェリー由来のドライフルーツ、蜂蜜、シナモン、バニラクリームが複雑に絡み合う芳醇な香り。【味わい】バーボン樽・シェリー樽・新樽の3種原酒をソレラバットで熟成。丸みのある甘みにビターチョコのニュアンスと温かみのあるスパイス感が加わり、奥行きのある味わい。【余韻】クリーミーでほのかにスパイシー、長く柔らかな余韻が続く。', 'https://www.suntory.co.jp/whisky/glenfiddich/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンフィディック 18年', '【色】深みのあるアンバーゴールド。【香り】オレンジピール、ドライフルーツ、ダークチョコレート、スパイスが複雑に融合した成熟した香り。【味わい】シェリー樽由来の豊かな甘みとオーク香が調和し、ドライフルーツ、スパイス、チョコレートが重なり合う深みのある味わい。12年とは一線を画す複雑さと円熟味が魅力。【余韻】長くなめらかで、スパイスとオークのウォームな余韻が続く。グレンフィディックの完成形とも称される一本。', 'https://www.suntory.co.jp/whisky/glenfiddich/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンフィディック 21年', '【色】深いアンバー。【香り】ラム樽由来のバナナ、トロピカルフルーツ、バニラ、チョコレートが南国的に溶け合う濃厚な香り。【味わい】カリブ海産ラム樽で熟成された個性豊かな一本。バナナ、マンゴーなど熟したトロピカルフルーツの甘みとスパイスの複雑さが際立ち、シルキーな口当たりが贅沢な飲み心地を提供する。【余韻】チョコレート、バニラ、南国フルーツの余韻が長く甘く続く。グレンフィディック最高峰の一本。', 'https://www.suntory.co.jp/whisky/glenfiddich/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンリベット 12年', '【色】輝くゴールド。【香り】柑橘の爽やかな香りに、洋梨、桃のフルーティさとトフィー、ハーブのニュアンスが重なる。【味わい】スペイサイドを代表するシングルモルトの定番。口に含むと滑らかでクリーミー、バニラと柑橘の甘みが広がり、白桃やリンゴのフルーティなフレーバーが続く。軽やかで飲みやすくバランスに優れる。【余韻】クリーンで爽やかなフルーティな余韻。スコッチの原点を体感できる一本。', 'https://www.theglenlivet.jp/our-whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンリベット 15年', '【色】深みのあるゴールド。【香り】オーク、ファッジ、アップルクランブル、カルバドスを思わせる熟成感あふれる香り。シナモンやクローブのスパイスも感じられる。【味わい】フレンチオーク樽でのフィニッシュにより、バニラの甘みとドライなオーク感が見事に融合。フルーツケーキのような豊かな甘みと複雑さを持ちながら、スムースでバランスが良い。【余韻】長くドライでほのかにスパイシーな余韻が続く。フレンチオーク熟成ならではの上品な個性を持つ一本。', 'https://www.theglenlivet.jp/our-whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンリベット 18年', '【色】豊かなゴールド。【香り】熟したトロピカルフルーツ、はちみつ、バニラ、オーク材の芳醇な香りが折り重なる。【味わい】18年という長い熟成が生み出す円熟した味わい。ドライフルーツ、ナッツ、上品なスパイス感とシルキーな口当たりが絶妙に調和し、深みとエレガントさを兼ね備えている。【余韻】暖かみのある長い余韻にはちみつとスパイスのニュアンスが残る。ザ・グレンリベットの真価を示す一本。', 'https://www.theglenlivet.jp/our-whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンリベット ファウンダーズリザーブ', '【色】明るいゴールド。【香り】プラム、アプリコット、オレンジの皮、タフィー、スイカズラが重なる芳醇なアロマ。チョコレートレーズンのヒントも感じられる。【味わい】創業者ジョージ・スミスに捧げるクラシックスタイル。フルーティで甘く、タフィーとアニスのタッチ、ミルクチョコレートフレーク、リンゴの味わいが広がるクリーミーな口当たり。【余韻】クリーミーなタフィー、わずかなオーク、甘い大麦、ミルクチョコレートレーズンのなめらかな余韻。', 'https://www.theglenlivet.jp/our-whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('マッカラン 15年 シェリーオーク', '【色】深みのあるアンバー。【香り】オロロソシェリー樽由来の豊かなドライフルーツ、イチジク、レーズン、チョコレート、スパイスが芳醇に香る。【味わい】ヨーロピアンオーク・シェリー樽のみで熟成されたシェリーオークシリーズの15年熟成版。濃厚なシェリーの甘みとドライフルーツ、なめらかなタンニンが口中で広がり、複雑さの中に気品がある。【余韻】チョコレートとスパイスの温かみある長い余韻が続く。マッカランの哲学を体現する珠玉の一本。', 'https://www.suntory.co.jp/whisky/macallan/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('マッカラン ダブルカスク 12年', '【色】バタースコッチを思わせるゴールド。【香り】バニラ、キャラメル、洋梨、ほのかな柑橘とドライフルーツが調和した甘い香り。【味わい】ヨーロピアンオークとアメリカンオーク両方のシェリー樽で熟成させた「ダブルカスク」ならではの甘みとフルーティさ。甘いレーズン、バニラ、スパイス、シトラスが軽やかに広がり、飲みやすくバランスに優れる。【余韻】ジンジャーのぬくもりの後、キャラメルとシトラスのクリーミーで長い余韻。', 'https://www.suntory.co.jp/whisky/macallan/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('マッカラン トリプルカスク 12年', '【色】明るいゴールド。【香り】バニラ、蜂蜜、洋梨のフレッシュなアロマに、ほのかなシトラスが重なる。【味わい】ヨーロピアンオーク・アメリカンオークのシェリー樽に加えて、バーボン樽熟成の原酒を組み合わせた3種の樽構成が特徴。シェリー系の甘みとバーボン樽由来のバニラ、フルーティな軽やかさが絶妙に融合したアクセスしやすいスタイル。【余韻】なめらかでクリーミー、バニラと甘いオークの余韻が穏やかに続く。シェリー樽の甘みとバーボン樽の清潔感を両立した一本。', 'https://www.suntory.co.jp/whisky/macallan/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ラフロイグ 10年', '【色】明るいゴールド。【香り】海藻、ヨード、燻製のピート香が圧倒的に立ち上がり、奥にバニラとほのかなシトラスの甘みが隠れる。【味わい】アイラ島随一の個性派。強烈なスモーキーさとヨード香の中に、塩キャラメル、熟したフルーツの甘みが感じられる。好き嫌いが分かれるが、一度虜になると忘れられない独特の世界観。【余韻】長くドライ、ヨードとウッディなスモーク、海塩の余韻が長く続く。チャールズ国王も愛した唯一無二の個性を持つ一本。', 'https://www.suntory.co.jp/whisky/laphroaig/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ラフロイグ カスクストレングス', '【色】濃いめのゴールド。【香り】パワフルなピートスモーク、ヨード、バニラ、タフィー、砂糖漬けのフルーツ。力強いながらも複雑なアロマ。【味わい】バッチごとにアルコール度数が異なる無加水・無濾過のカスクストレングス。バニラとタフィーの甘みにクローブ、カルダモン、チリのスパイシーさ、塩キャラメル、ブラックカラントが重なり圧倒的な複雑味を持つ。【余韻】スパイス、オークタンニン、ヨード、海塩のロングフィニッシュ。ラフロイグの真髄に最も近い、上級者向けの一本。', 'https://www.suntory.co.jp/whisky/laphroaig/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ラフロイグ クオーターカスク', '【色】濃いゴールド。【香り】バター、オイリー感、ピートの燃えかす、ほのかなバニラ、ひと粒の塩のニュアンスが複雑に絡み合う。【味わい】通常の1/4サイズの小樽で熟成することで樽と原酒の接触面積が増し、熟成が加速。フルボディでスモーキーながら、穏やかな甘みとバニラ、ナッツの丸みが際立つ複雑な構成。45.1度のアルコールが心地よい。【余韻】スモーキーな甘みとウッディな余韻が長く続き、最後にほのかな塩気を感じる。', 'https://www.suntory.co.jp/whisky/laphroaig/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('アードベッグ 10年', '【色】明るいゴールド。【香り】強烈なピートスモーク、ヨード、レモン、バニラ、ライム。アイラ最強レベルのスモーキー感に爽やかな柑橘が絡み合う。【味わい】55ppm前後の高フェノール値が生み出す圧倒的なスモーキーさの中に、バニラ、チョコレート、タフィーの甘みが存在し、絶妙なバランスを生み出す。辛さとピートの強さはラフロイグをも凌ぐと言われる個性。【余韻】非常に長く、スモークとシトラスの苦甘さが波のように続く。世界最高のシングルモルトに度々選ばれる傑作。', 'https://www.ardbeg.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('アードベッグ ウーガダール', '【色】深みのあるアンバー。【香り】シェリー樽由来のダークフルーツ、チョコレート、コーヒー、カカオにピートスモークが複雑に絡む芳醇な香り。【味わい】アードベッグ蒸留所の仕込み水採取地「ウーガダール湖」にちなむ名作。バーボン樽原酒とシェリー樽原酒をブレンドし、豊かなフルーツ甘みとパワフルなスモーキーさが絶妙に融合。2009年ワールドウイスキー・オブ・ザ・イヤー受賞。【余韻】チョコレートとスモークの長い余韻が印象的。', 'https://www.ardbeg.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('アードベッグ コリーヴレッカン', '【色】深みのあるゴールド。【香り】フレンチオーク新樽由来のバニラ、カカオ、タールのスモーク、ブラックペッパーが力強く香る。【味わい】バーボン樽とフレンチオーク新樽の2種の原酒をヴァッティング、アルコール度数57.1度のノンチルフィルタード版。アードベッグ最もパワフルな表現で、スモークとスパイス、チョコレートが怒濤のように押し寄せる圧倒的な飲み応え。2010年世界最高シングルモルト受賞。【余韻】タール、ダークチョコ、スパイスの非常に長い余韻。', 'https://www.ardbeg.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ボウモア 12年', '【色】明るいゴールド。【香り】潮風のスモーク、レモン、はちみつ、バニラが調和したアイラらしい香り。ピートとフルーティさのバランスが美しい。【味わい】「アイラの女王」と称されるボウモアの入門版。ピートのスモーキーさが穏やかで、シェリー樽由来のほのかなダークフルーツ、はちみつ、バニラクリームが絶妙に共存した繊細なバランスが魅力。【余韻】長く繊細でスモーキーな甘みが続く。ピートウィスキー入門に最適な一本。', 'https://www.suntory.co.jp/whisky/bowmore/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ボウモア 15年', '【色】豊かなアンバー。【香り】バーボン樽12年熟成後にオロロソシェリー樽で3年追熟した複雑な香り。花や果物の甘い香りにほのかなスモークが漂う。【味わい】シェリー樽フィニッシュによりドライフルーツ、プラム、チョコレート、バニラが複雑に融合。ピートのスモーキーさがシェリーの甘みに包まれ、まろやかで奥深い。12年より格段に甘くリッチ。【余韻】ウォームでスモーキー、シェリーと甘みの長い余韻。アイラらしいスモークとシェリーの融合を楽しめる一本。', 'https://www.suntory.co.jp/whisky/bowmore/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ボウモア 18年', '【色】深いアンバー。【香り】シェリー樽の華やかさ、ビターチョコレート、ドライフルーツ、熟成感あふれる樽の香り。ピートは穏やかながら存在感がある。【味わい】18年の長期熟成により、アルコールの辛みが抑えられ円熟した口当たり。シェリーの豊かな甘みとウッディな複雑さが見事に調和し、スモーキーさは落ち着いて奥行きを演出している。【余韻】ビターチョコレートとシェリー、樽のウォームな余韻が長く続く。長期熟成が生み出す高貴な複雑さが凝縮された一本。', 'https://www.suntory.co.jp/whisky/bowmore/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('オーバン 14年', '【色】明るいアンバー。【香り】海塩、蜂蜜、シトラス、バニラ、ほのかなピートスモークが複雑に絡み合うハイランド海辺の蒸留所らしい香り。【味わい】ハイランドとアイラの中間的スタイルを持つ銘蒸留所の代表作。適度なスモーキーさと潮風のニュアンス、オレンジピールとはちみつの甘み、まろやかなモルト感が個性的に融合している。飲み飽きのしない複雑さが好評。【余韻】まろやかでほのかにスモーキー、潮の香りと蜂蜜の甘みが長く続く。ハイランドモルトの粋を体現した14年熟成版。', 'https://www.malts.com/en-gb/distilleries/oban/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ダルウィニー 15年', '【色】明るいゴールド。【香り】ハイランドの高地にある蒸留所ならではの、ヘザーハニー、スパイス、バニラ、リンゴの爽やかな香り。穏やかなピートのニュアンスも感じられる。【味わい】スコットランドで最も標高が高い蒸留所のひとつで生まれる、クリーンで爽やかなハイランドモルト。はちみつ、バニラ、果物の甘みとスパイスが軽やかに広がり、穏やかなスモークがアクセントを添える。【余韻】長くスムースで、はちみつとほのかなスパイス感が続く。高地の澄んだ空気を感じる清潔感あふれる一本。', 'https://www.malts.com/en-gb/distilleries/dalwhinnie/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('クラガンモア 12年', '【色】淡いゴールド。【香り】複雑でフルーティ、花のアロマ、わずかなピートスモーク、バニラ、洋梨のデリケートな香り。スペイサイドらしい上品さ。【味わい】スペイサイドモルトの中でも特に複雑な香味構成を持つと言われるクラガンモア12年。フルーティな甘みとシリアル感、ほのかにスモーキーでハーブ的なフレーバーが絡み合い、専門家からも高い評価を受ける。【余韻】長くクリーンでわずかにスモーキー、ドライなフィニッシュ。デュワーズのキーモルトとしても知られる複雑さを備えた一本。', 'https://www.malts.com/en-gb/distilleries/cragganmore/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('スプリングバンク 10年', '【色】淡いゴールド。【香り】グーズベリー、マンゴー、ブドウのフルーティなアロマとバニラ、コムハニーのやさしい甘みが広がる。ほのかな海塩とピートのニュアンス。【味わい】キャンベルタウン最後の砦として知られる蒸留所のフラッグシップ。軽いピートを使った麦芽を2回半蒸溜する独自製法で生まれる、複雑でバランスの良い味わい。オイリーでリッチ、フルーティな甘みと海の塩気が調和している。【余韻】モルトとほのかなスモーク、塩気の余韻が長く続く。個性的なキャンベルタウンスタイルの真髄。', 'https://springbankwhisky.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('スプリングバンク 15年', '【色】深みのあるゴールド。【香り】シェリー樽由来の豊かなドライフルーツ、チョコレート、バニラ、ほのかな塩気と燻製の複雑な香り。【味わい】シェリー樽・バーボン樽・ラム樽など複数の樽で熟成させた複雑な構成が特徴。10年よりも円熟した濃厚な甘みと複雑なフレーバーが融合し、キャンベルタウンの伝統を体現する豊かな味わいが広がる。【余韻】フルーティでスモーキー、複雑な余韻が長く続く。熟成年数と多様な樽使いが生み出す奥深い一本。', 'https://springbankwhisky.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンモーレンジィ オリジナル 10年', '【色】輝くゴールド。【香り】フレッシュなシトラス、バニラ、ピーチ、花のアロマが万華鏡のように多彩に広がる。スコットランドで最も高いポットスチルが生み出す繊細さ。【味わい】バーボン樽のみで10年熟成した軽やかでエレガントなハイランドモルト。熟した洋梨、バニラクリーム、ほのかなシトラスが軽やかに広がり、クリーンで上品な口当たりが心地よい。【余韻】爽やかでフルーティ、バニラとシトラスのクリーンな余韻が続く。モルトウィスキーの優雅さを凝縮した定番の一本。', 'https://www.mhdkk.com/brands/glenmorangie/sp', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンモーレンジィ ラサンタ', '【色】深みのあるアンバー。【香り】オロロソ・シェリー樽とペドロヒメネス樽でのフィニッシュにより、ダークチョコレート、チェリー、ドライフルーツ、バニラが豊かに香る。【味わい】バーボン樽10年熟成後にシェリー2種の樽でフィニッシュ。「ラサンタ」はゲール語で「情熱」を意味し、オリジナルの爽やかさにシェリー由来の甘みとコクが加わった複雑な味わい。チョコレート、ラズベリー、オレンジが重なる。【余韻】温かくリッチ、スパイスとフルーツの長い余韻が続く。', 'https://www.mhdkk.com/brands/glenmorangie/sp', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンモーレンジィ クインタルバン', '【色】深いルビーゴールド。【香り】ルビーポートワイン樽フィニッシュ由来のチョコレートミント、ダークベリー、バニラが豊かに香る。官能的な甘みとスパイスのアロマ。【味わい】バーボン樽での熟成後にルビーポートワイン樽で後熟した「クインタルバン（ゲール語でルビー）」。ベルベットのような滑らかな口当たりとともに、ダークチョコレート、ラズベリー、ウォールナッツ、ほのかなミントが複雑に広がる。【余韻】豊かで長い余韻にチョコとポートワインのニュアンスが残る。ポルトガルのブドウ園を意味する名が示す贅沢な一本。', 'https://www.mhdkk.com/brands/glenmorangie/sp', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ハイランドパーク 12年', '【色】輝くアンバーゴールド。【香り】ヘザーハニーの甘さにスモーキーなピート香、シナモン、ナツメグ、ドライフルーツが調和したオークニー島の風土を感じさせる香り。【味わい】ヴァイキングの遺産を受け継ぐオークニー産のシングルモルト。ヘザーで風味付けされたピートが独特のスモーキーさを生み出し、蜂蜜の甘みとシェリー樽由来の果実の豊かさが絶妙に融合。丸みのある飲み心地。【余韻】ヘザーハニーとスモーキーな甘みの長い余韻。スモーキーと甘みのバランスが魅力の一本。', 'https://www.highlandparkwhisky.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ハイランドパーク 18年', '【色】深みのあるアンバー。【香り】ヘザーの花、蜂蜜、オレンジピール、チョコレート、スモークが複雑に融合した熟成感あふれる香り。【味わい】18年の長期熟成が生み出す円熟味。シェリー樽由来の豊かなフルーツ感と蜂蜜の甘み、ヴァイキングピートのスモーキーさが三位一体となって口中に広がる。複雑さの中に優雅さと風格がある。【余韻】長くウォームで、蜂蜜とスモーク、スパイスが重なり合う深い余韻。世界的ウイスキーコンペティションで最高評価を得た、ハイランドパークの傑作。', 'https://www.highlandparkwhisky.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレングラント 10年', '【色】淡いペールゴールド。【香り】青リンゴ、洋梨、バニラ、バタースコッチの爽やかでデリケートな香り。フルーティで軽やかなスペイサイドスタイル。【味わい】1840年創業のスペイサイドの名門蒸留所が誇る定番品。クリーミーでフルーティな口当たりに、バニラクリーム、カラメル、バターフィナンシェのニュアンスが広がる。ボディは程よくありながら軽やかで飲みやすい。イタリアで最も売れるシングルモルトとしても知られる。【余韻】干し草をまとった穏やかなウッディ感と甘みの余韻が続く。', 'https://www.glengrant.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブナハーブン 12年', '【色】濃い黄金色。【香り】潮風、カツオだし的な海のミネラル感、完熟マンダリンオレンジ、バニラ、ほのかなバター。スモークは控えめで優しいアイラスタイル。【味わい】「アイラで最も優しいモルト」と評されるブナハーブン。ノンピートが主体で、ドライフルーツ、バニラ、オレンジ、ナッツ、ダークチョコレートが豊かに広がる。アイラモルト特有の潮気を感じつつも、クリーミーで飲みやすい。【余韻】スムースでビターなオーク、ほのかな潮気の余韻が穏やかに続く。ピートが苦手でもアイラを楽しめる一本。', 'https://www.bunnahabhain.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('カリラ 12年', '【色】淡いホワイトゴールド。【香り】フルーティなピート香、海藻、レモン、梨、バニラ、蜂蜜が複雑に絡む。スモーキーながら爽やかさも持ち合わせる。【味わい】34〜38ppmという中程度のフェノール値が生み出す、スモーキーながら優しいアイラモルト。潮風のミネラル感とレモン・リンゴのフルーティさ、ブラックペッパーのスパイスが心地よく調和している。スモーキーとフルーティのバランスが高く評価されている。【余韻】木炭のようなドライな後味とほのかな甘みが長く続く。アイラモルト入門に最適な一本。', 'https://www.malts.com/en-gb/distilleries/caol-ila/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('タリスカー 10年', '【色】アンバーゴールド。【香り】海塩、生ガキ、柑橘の甘み、力強いピートスモークが一体となったスカイ島の荒野を思わせる香り。【味わい】「スカイ島の荒々しい自然をそのままボトルに詰めた」と言われるタリスカーの定番品。スモーキーで豊かなドライフルーツの甘み、黒コショウのスパイシーさ、海塩のミネラルが力強く個性的に融合している。【余韻】非常に長くスパイシーで、黒コショウと塩辛さ、スモークが波のように続く。ディアジオ「クラシックモルト」の一つに数えられる傑作。', 'https://talisker-online.jp/lineup/y10.php', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('タリスカー ストーム', '【色】ゴールド。【香り】嵐を思わせる荒々しいスモーク、海塩、コショウのスパイシーなアロマ。タリスカー本来の潮の香りが強調されている。【味わい】ノンエイジのノンチルフィルタード版。タリスカー10年の特徴であるスモーキーさ、黒コショウのスパイシーさ、海塩のミネラル感をより強調したワイルドなスタイル。荒々しくも甘みがあり、複雑なフレーバーが嵐のように広がる。【余韻】長くスパイシー、スモークと塩辛さが波のように繰り返す非常にインパクトのある余韻。嵐の名を持つ個性的な一本。', 'https://talisker-online.jp', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジョニーウォーカー ブラックラベル 12年', '【色】豊かなアンバー。【香り】スモーキーなピートのアロマにシェリー樽由来のレーズン、ドライフルーツ、バニラが重なる複雑な香り。【味わい】世界最高のブレンデッドスコッチのひとつ。40種類以上の原酒をブレンドし、甘みとスモーク、スパイスが見事に調和している。レーズン、ドライフルーツ、バランスの良いピート香、ヨードと共にリンゴや洋梨のフルーティさも感じられる。【余韻】長くスムースでスモーキー、余韻がじっくりと続く。ハイボールで飲んでも崩れない安定感が人気の一本。', 'https://www.johnniewalker.com/ja-jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジョニーウォーカー ゴールドラベル', '【色】明るいゴールド。【香り】蜂蜜のような濃厚な甘さ、バニラ、熟したトロピカルフルーツのクリーミーなアロマ。【味わい】18年以上熟成した厳選原酒のみをブレンドしたプレミアムライン。クリーミーでスムースな口当たりに、蜂蜜とバニラの豊かな甘みが広がり、熟したフルーツとほのかなスモークがアクセントを添える。ブラックラベルより格段にリッチで贅沢な飲み心地。【余韻】長くなめらかで甘い余韻が続き、ほのかなスパイス感が残る。ギフトにも人気の上質な一本。', 'https://www.johnniewalker.com/ja-jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジョニーウォーカー ブルーラベル', '【色】深みのあるゴールド。【香り】熟したリンゴ、オレンジ、ライムの柑橘感にバニラとほのかなスモークが折り重なる華やかなアロマ。【味わい】ジョニーウォーカーの最高峰。1万樽に1樽未満という希少な原酒のみをブレンドした至高の一本。シルキーな口当たりとともに、豊かで複雑なフルーツ、スモーク、スパイスが調和し、完成度の高い贅沢な味わいが広がる。【余韻】爽やかでスモーキーな長い余韻に柑橘感が残る。特別な場面にふさわしい世界最高クラスのブレンデッドウイスキー。', 'https://www.johnniewalker.com/ja-jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジョニーウォーカー グリーンラベル 15年', '【色】澄んだゴールド。【香り】ハーブや草原のようなグリーンな清涼感と、バニラの甘みが共存する爽やかな香り。ほのかな青臭さが個性的。【味わい】15年以上熟成したモルト原酒のみを使用したピュアモルトブレンドの逸品。スムースでスパイシー、青リンゴ、ハーブ、モルトの甘みが軽やかに融合。ブレンデッドながらモルトの濃厚さをしっかり感じられるリッチな味わい。【余韻】ハーブ感とバニラ、ほのかな甘さが清々しく続く。「グリーン」の名の通り、自然を感じさせる個性的な一本。', 'https://www.johnniewalker.com/ja-jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('シーバスリーガル 12年', '【色】明るいゴールド。【香り】ハーブ、蜂蜜、リンゴのフレッシュで甘い香り。スペイサイドモルトを中心にブレンドされた上品なアロマ。【味わい】スコッチブレンデッドの王者として長年君臨するシーバスリーガルの定番品。バニラとヘーゼルナッツの風味とともに熟したリンゴと蜂蜜の甘みが広がり、クリーミーでまろやかな舌触りが心地よい。万人に受け入れられるバランスの良さが魅力。【余韻】長く柔らかで、フルーツと蜂蜜の余韻がスムースに続く。', 'https://www.chivas.com/ja-JP', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('シーバスリーガル 18年', '【色】深みのあるアンバーゴールド。【香り】85種類ものアロマが感じられるという複雑な香り。ドライフルーツ、チョコレート、バタースコッチ、モルトが折り重なる。【味わい】数々の国際的コンペティションで最高賞を受賞した類まれなる完成度。完璧なバランスと類を見ないスムースさを持ち、ナッツ、フルーツケーキ、クリーム、上品なスパイスが口中で調和する。【余韻】長くウォームで、ドライフルーツとバタースコッチの余韻が優雅に続く。スーパープレミアムの名にふさわしい18年熟成の傑作。', 'https://www.chivas.com/ja-JP', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('シーバスリーガル 25年', '【色】深いマホガニー。【香り】25年という長期熟成が生み出す豊かなドライフルーツ、チョコレート、革、スパイス、バニラの複雑で贅沢なアロマ。【味わい】シーバスリーガルの最高峰。クリーミーでビロードのような口当たりに、チョコレート、プラム、オレンジピール、タバコの葉が複雑に溶け合い、深みと風格のある味わいが広がる。25年の歳月が生み出す至高の均衡美。【余韻】非常に長くリッチで、チョコレートとドライフルーツ、スパイスの余韻が波のように続く。特別な祝いの席にふさわしい至高の一本。', 'https://www.chivas.com/ja-JP', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バランタイン 12年', '【色】明るいゴールド。【香り】バニラ、蜂蜜、洋梨、わずかなスモークが調和したバランスの取れた香り。【味わい】世界第2位の販売量を誇るスコッチブレンデッドの大定番。40種類以上の原酒をブレンドし、バランスの名の通り甘み・スモーク・フルーティさが見事に均衡している。バニラの甘さ、モルトの穀物感、ほんのりスモーキーさが軽やかに広がる飲みやすいスタイル。【余韻】スムースでまろやかな余韻がゆっくりと続く。日常的に楽しめるコスパ抜群のブレンデッドスコッチ。', 'https://www.ballantines.com/ja-jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バランタイン 17年', '【色】深みのあるゴールドアンバー。【香り】熟成感あふれる豊かなフルーツ、シェリー樽由来のドライフルーツ、バニラ、ほのかにスモークとスパイス。【味わい】17年以上熟成した40種類以上の原酒をブレンドした上級ライン。12年より格段にリッチで複雑な味わいで、シルキーな口当たりとともに、蜂蜜、バタースコッチ、ドライフルーツのフレーバーが豊かに広がる。【余韻】長くウォームでスムース、フルーツと蜂蜜の余韻が優雅に続く。バランタインの真髄を示すプレミアムブレンドの一本。', 'https://www.ballantines.com/ja-jp/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('デュワーズ 12年', '【色】明るいゴールド。【香り】蜂蜜、トフィーアップル、ファッジ、温かいバターのようなメロウで甘い香り。【味わい】二重熟成（ダブルエイジド）製法が特徴のデュワーズの定番品。12年熟成後にオーク樽でさらにブレンド熟成を施すことで、ジューシーなブドウ、フレッシュな柑橘、バニラのクリーンでスムースな口当たりが生まれる。飲みやすく、ハイボールでも活きる爽快感。【余韻】溶けたキャラメルのような長くなめらかな余韻が続き、ほのかな樽のニュアンスが残る。', 'https://www.dewars-jp.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('フェイマスグラウス', '【色】明るいアンバー。【香り】ショートブレッド、甘いシェリー、ナッツ、ほのかなオーク香とスパイスが穏やかに広がる。【味わい】スコットランドの国鳥「ライチョウ」をラベルに冠したスコットランドで長年トップシェアを誇るブレンデッドスコッチ。40種類以上のモルトとグレーン原酒をシェリー樽で約1年後熟（ダブルマリッジ製法）することで生まれるクリーミーでなめらかな口当たり。ドライフルーツ、シナモン、ジンジャーの柔らかいスパイス感が心地よい。【余韻】スムースで完璧なバランスの余韻が穏やかに続く。', 'https://www.thefamousgrouse.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンドロナック 12年', '【色】深みのあるアンバー。【香り】オロロソ・シェリー樽とペドロヒメネス樽で全量熟成した豊かなアロマ。チョコレートプラリネ、ジンジャーブレッド、干しレーズンの芳醇な香り。【味わい】「シェリー爆弾」と称されるグレンドロナックのエントリー版。カラメル化したイバラのような甘み、シルキーなオレンジ、スルタナ、温かいスパイスの豊かな味わいが広がる。シェリー樽100%熟成の圧倒的なリッチさ。【余韻】チョコレートとドライフルーツ、スパイスのウォームな余韻が長く続く。', 'https://www.glendronachdistillery.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンドロナック 15年', '【色】アンティークブロンズ。【香り】マラスキーノチェリー、熟したブラックベリー、ダークチョコレートミント、オレンジビターズ、クルミリキュールの複雑な香り。【味わい】PXシェリー樽とアロロソシェリー樽のダブルシェリー熟成15年版。蜂蜜をかけたアプリコット、熟したイチジク、ブラックチェリー、マスカットが複雑に融合した濃厚でリッチな味わい。12年よりさらに深みのあるシェリー感が特徴。【余韻】ダークフルーツとスパイス、チョコレートの非常に長い余韻。シェリー熟成の極致を示す一本。', 'https://www.glendronachdistillery.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('アベラワー 12年', '【色】ゴールドアンバー。【香り】バーボン樽とシェリー樽のダブルカスクマチュアードによる、りんごのフルーティさと上品なシェリーの甘さが調和した香り。【味わい】スペイ川の岸辺にある蒸留所が生み出すバランス派のスペイサイドモルト。チョコレート、トフィ、シナモン、ジンジャーのスパイス感と、フルーティなアロマとシェリーのキャラクターが見事に調和している。甘くて飲みやすくリッチ。【余韻】甘くかすかにスパイシーな温かみのある余韻が心地よく続く。スペイサイドらしい調和美の一本。', 'https://www.aberlour.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンカダム 10年', '【色】明るいゴールド。【香り】洋梨、桃、バニラ、蜂蜜のフレッシュで甘いアロマ。ほのかなシトラスとクリーミーな花のニュアンスが重なる。【味わい】ハイランドの隠れた名蒸留所グレンカダムの定番10年。バーボン樽主体の熟成が生み出すクリーンで軽やかな口当たりに、バニラ、洋梨、モルトの甘みが広がる。派手さはないが上品でバランスの良い飲み心地。ハイランドスタイルの正統派シングルモルト。【余韻】クリーンでフルーティな余韻が穏やかに続く。素直さと品位を兼ね備えた知る人ぞ知る逸品。', 'https://www.glencadam.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンファークラス 10年', '【色】アンバー。【香り】シェリー樽熟成由来のドライフルーツ、レーズン、バニラ、ほのかなスパイスの豊かな香り。【味わい】家族経営を守り続けるスペイサイドの名蒸留所グレンファークラスの10年版。オロロソシェリー樽100%熟成により、甘くリッチなシェリーフルーツとモルトの甘さが口中に広がる。バニラ、ドライフルーツ、ほのかな木のスパイスが複雑さを加える。コスパに優れたシェリー系モルトの入門版。【余韻】温かくスパイシー、ドライフルーツと蜂蜜の余韻がじっくりと続く。', 'https://www.glenfarclas.co.uk', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンファークラス 15年', '【色】深みのあるアンバー。【香り】シェリー樽100%の15年熟成が生み出す、豊かなドライフルーツ、レーズン、チョコレート、シナモンの複雑な香り。【味わい】10年より格段に深みを増したシェリーフレーバー。プラム、チョコレート、タバコ、スパイスが折り重なり、リッチで複雑な口当たりを見せる。46%のアルコール度数で無加水に近いストレングスがフレーバーを際立てる。【余韻】長くウォームで、チョコレートとドライフルーツ、スパイスの余韻が続く。シェリーウィスキー愛好家が必ず通る一本。', 'https://www.glenfarclas.co.uk', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ストラスアイラ 12年', '【色】アンバーゴールド。【香り】草原を思わせる青々しい香り、りんごや洋梨のフルーティな甘み、蜂蜜のやさしいアロマが上品に広がる。「花の蜜」と評される繊細な甘さ。【味わい】シーバスリーガルのキーモルトとして知られ、「ホームオブシーバス」と呼ばれるスペイサイドの名蒸留所の逸品。まろやかで飲みやすく、熟れた青リンゴと洋梨、シロップのような甘みが爽やかに広がる。アルコール感は控えめで全体的に上品な印象。【余韻】爽やかで穏やかな甘みがすっきりと消えていく。スペイサイドの典型的なエレガンスを体現した一本。', 'https://www.strathisla.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ベンリアック 10年', '【色】サマーゴールド。【香り】リッチな果樹園の果実（洋梨、ネクタリン）、蜂蜜、トーストオークのアロマが心地よく広がる。【味わい】スペイサイド北部の農場蒸留所ベンリアックのフラッグシップ「ザ・オリジナル テン」。バーボン樽・シェリー樽・バージンオーク樽の3種の原酒をヴァッティングしたスムースで複層的な味わい。熟した洋梨、ネクタリン、モルトの甘さがシルキーな口当たりで広がる。【余韻】アーモンドとスパイスの効いたバニラのなめらかな余韻が続く。多彩な樽使いが生み出す複雑さを持ちながら飲みやすい一本。', 'https://www.benriachdistillery.com', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ============================================================
-- BOURBON WHISKY
-- ============================================================

-- BOURBON WHISKY bottle_info INSERT
-- 生成日: 2026-04-18

-- ============================================================
-- バーボンウィスキー bottle_info INSERT文
-- ============================================================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バッファロートレース', '【色】深いアンバー。【香り】バニラ、ミント、モラセスの複雑なアロマが広がり、時間とともにキャラメルと微かなシトラスが現れる。【味わい】ブラウンシュガーとスパイスの甘さから始まり、オーク、トフィー、ダークフルーツ、アニスへと展開する。ミディアムボディで上品なバランス。【余韻】長くなめらかで、深みのあるオークとスパイスが心地よく続く。100以上の受賞歴を持つ、世界で最も受賞歴の多いディスティラリーの代表作。', 'https://www.buffalotrace.com/our-bourbon.html', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('イーグルレア 10年', '【色】深みのあるバーニッシュゴールド。【香り】トフィー、オレンジピール、ハーブ、ハチミツ、レザー、オークが複雑に絡み合い、ほのかなアーモンドが奥底に潜む。【味わい】大胆かつドライで繊細。キャンディードアーモンドと非常にリッチなカカオの風味。10年以上の熟成がもたらす豊かな複雑さが口いっぱいに広がる。【余韻】ドライで長く続くフィニッシュ。シングルバレルならではの個性が光る、バッファロートレースが誇るプレミアムバーボン。', 'https://eaglerare.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブラントン オリジナル', '【色】明るいアンバー。【香り】シトラスとドライフルーツの爽やかな香りに、オーク、バニラ、蜂蜜が重なる。【味わい】スパイシーなライとタバコのニュアンスにキャラメルとハチミツが融合し、リッチで複雑な味わいが広がる。【余韻】バランスよくほのかな甘さが残る、長めの余韻。世界初のシングルバレルバーボンとして1984年に発売。個性的な馬の栓が施されたボトルは今やコレクターズアイテム。46.5%のアルコール度数で飲みやすさも兼ね備える。', 'https://www.blantonsbourbon.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブラントン ゴールド', '【色】深みのあるゴールドアンバー。【香り】スパイシーなライとタバコのノートに始まり、キャラメル、ハチミツ、ダークフルーツ、シトラスのニュアンスが複雑に重なる。【味わい】ライ、タバコ、ハチミツが一体となった複雑なアロマを忠実に反映した豊かな味わい。オリジナルより高いアルコール度数（51.5%）でさらに力強い。【余韻】長く続くスパイシーでフルーティなフィニッシュ。日本・欧州市場向けにリリースされたブラントンの上位版で、よりリッチな風味表現が特徴。', 'https://www.blantonsbourbon.com/pages/our-bourbon', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブラントン ストレートフロムザバレル', '【色】濃厚なダークアンバー。【香り】ダークチョコレート、キャラメル、バター、クルミ、ヘーゼルナッツのアーシーな香りが重なる。【味わい】ウォームバニラ、オーク、トーストナッツ、豊かなスパイシーさにバタースコッチやハチミツのニュアンスが広がる。樽出しの高アルコール（約64%）による強烈かつ深みある存在感。【余韻】深く共鳴するような長いフィニッシュ。加水・冷却濾過なしでバレルから直接ボトリング。バーボン愛好家垂涎のカスクストレングス版ブラントン。', 'https://www.blantonsbourbon.com/pages/our-bourbon', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ワイルドターキー 8年', '【色】リッチなゴールド。【香り】キャンディコーン、温かいキャラメル、バニラ、レモンゼスト、トーストオーク、ライトクローブとライスパイス。【味わい】キャラメル、バニラ、シーズンドオークを軸に、ライスパイスがバランスよく絡み合う。ジミー・ラッセルによる厳選バレルを8年以上熟成した手仕事の一本。【余韻】ライスパイスとペッパリーなオークにシナモン、ブラウンシュガーが続く、エネルギッシュな余韻。101プルーフの力強さが凝縮された、ワイルドターキーの真髄。', 'https://www.wildturkeybourbon.com/en-us/products/wild-turkey-101-8-year-old-bourbon/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ワイルドターキー 101', '【色】アンバーゴールド。【香り】トフィー、オレンジピール、キャラメルに、バニラとオークが土台を作る。【味わい】シナモン、ナツメグ、オールスパイスのスパイスが最初に来て、バニラ、バナナ、キャラメルの甘さが中盤に展開する。ライ麦比率の高いマッシュビルが独特のスパイシーさを生み出す。【余韻】温かく長く続くスパイシーでオーキーなフィニッシュ。101プルーフ（50.5%）のフルプルーフで提供される、ワイルドターキーのフラッグシップ。バーボン入門からベテランまで愛される一本。', 'https://www.wildturkeybourbon.com/en-us/products/wild-turkey-101/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ワイルドターキー レアブリード', '【色】ディープアンバー。【香り】キャラメル、トフィー、明るいオレンジゼスト、シーズンドオーク。【味わい】強烈なシナモン、ナツメグ、オールスパイスのスパイスから始まり、バニラ、キャラメルの甘さへと変化する。バレルプルーフ（約58%前後）ならではの集中した風味。【余韻】長く複雑なオークスパイスが持続する。加水なし、冷却濾過なしのバレルプルーフで提供されるワイルドターキーの傑作。独自の強烈なバニラ感と抜群のマウスフィールで愛好家から高い評価を得る。', 'https://www.wildturkeybourbon.com/products/rare-breed/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ワイルドターキー マスターズキープ', '【色】濃いマホガニーブラウン。【香り】ダークキャラメル、チャードオーク、ベイキングスパイス、ドライチェリー。【味わい】トフィー、モラセス、ローストペカン、シーズンドオークが押し寄せ、レザーやパイプタバコのニュアンスが重なる。17年以上の長熟がもたらす深みある複雑さ。【余韻】シナモン、ブラックペッパー、スイートバニラが重なるロングフィニッシュ。マスターディスティラー、ジミー・ラッセルが監修するワイルドターキー最高峰のリミテッドエディション。各リリースがコレクターの注目を集める。', 'https://www.wildturkeybourbon.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('メーカーズマーク', '【色】明るいゴールドアンバー。【香り】ソフトレッドウィートを使用したウィーテッドバーボン特有の甘くフローラルな香り。キャラメル、バニラ、軽やかな花の香りが広がる。【味わい】キャラメルとバニラのクインテッセンシャルな味わいにブラウンシュガーが重なり、ソフトウィートが辛味を抑えた上品な甘さを演出する。フルボディで個性的なフレーバー。【余韻】クリーンで長く、ほのかなスパイスが続く。1958年から続くケンタッキーの伝説的ウィーテッドバーボン。ロレット蒸留所で一本一本赤ワックスを手塗りする伝統を守る。', 'https://www.makersmark.com/en-us/bourbons/makers-mark', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('メーカーズマーク 46', '【色】深みのあるアンバー。【香り】キャラメル、バニラ、ベイキングスパイスが重なり、フレンチオーク由来のナッティな香りが加わる。【味わい】キャラメル、バニラ、ベイキングスパイスが層を重ねて広がり、10本の焼き焦がしたフレンチオークスティーブによる独特の深みが特徴。パワフルでありながら驚くほどなめらか。【余韻】長くリッチで、バニラとスパイスが心地よく続く。メーカーズマーク創業家のビル・サミュエルズJr.が考案した革新的フレンチオーク仕上げ工程により、クラシックな味わいにさらなる複雑さを加えた上位版。', 'https://www.makersmark.com/en-us/bourbons/makers-mark-46', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジムビーム ホワイト', '【色】ライトゴールド。【香り】オーキーバニラにスパイシーなバックドロップ、フレッシュグレインの香りが軽やかに広がる。【味わい】ミディアムボディでキャラメルとバニラのまろやかな甘さが中心。スパイスとオーク由来の軽いタンニンが引き締める。さっぱりとした飲みやすさが魅力。【余韻】短めながらクリーンで、オークのほのかな温もりが残る。200年以上の歴史を誇るビームジャパンの定番。世界で最も愛されるバーボンのひとつであり、ハイボールやカクテルベースとして世界中で楽しまれる。', 'https://www.jimbeam.com/en-us/bourbons/jim-beam', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジムビーム ブラック', '【色】リッチなゴールド。【香り】ブラウンシュガー、ライスパイス、キャラメル、マイルドバニラ、タートオレンジシトラス、シナモン。【味わい】シンプルシロップとライトキャラメルを基調に、オレンジシトラスのタング、ブラックティー、マイルドチャー、タンニンとオークが調和する。7年熟成によるフルボディ。【余韻】温かいオークとスパイスが続くスムースなフィニッシュ。ジムビームホワイトより長期熟成（追加熟成）を施したエクストラエイジド版。リッチなゴールドカラーにキャラメル、バニラ、ウォームオークノートを凝縮。', 'https://www.jimbeam.com/en-us/bourbons/jim-beam-black', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ノブクリーク 9年', '【色】ディープアンバー。【香り】ロバストなバニラ、キャラメル、軽いスモーク。ナッツとオーク由来の深みある香りが広がる。【味わい】9年熟成のオーク、バニラ、ナッツを中心に、リッチなキャラメルとディープなコーンの甘さが展開。100プルーフ（50%）の力強さと豊かな風味が特徴。【余韻】バニラ、レザー、オレンジピール、クローブ、レッドホットシナモンが続く長いキャラメルフィニッシュ。禁酒法以前のスタイルに倣い、9年熟成・100プルーフで作られるノブクリークのフラッグシップ。プレプロヒビションスタイルの正統派バーボン。', 'https://www.knobcreek.com/whiskies/9-year-old-bourbon-whiskey', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ノブクリーク シングルバレル', '【色】濃いアンバー。【香り】バニラ、キャラメル、トーストオーク、微かなスモーク。9年熟成のシングルバレルならではの複雑なアロマ。【味わい】ディープなバニラとオークの基調に、ライトブラウンシュガー、キャラメル、ナッツが重なる。120プルーフ（60%）のカスクストレングスで、各バレルごとに個性が異なる。【余韻】長くウォームで、オークスパイスとペッパーが持続する。シングルバレルゆえにバッチごとの個性が楽しめる。ノブクリーク9年のシングルバレル版として愛好家から高い評価を受ける限定スタイル。', 'https://www.knobcreek.com/whiskies/9-year-old-single-barrel-reserve-bourbon-whiskey', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブッカーズ', '【色】ダークアンバー。【香り】オーク、キャラメル、バニラ、ベイキングスパイスが力強く広がる。【味わい】フルボディでインテンスなマウスフィール。ブラウンシュガー、ロースト ナッツ、ダークフルーツのヒントが絡み合う。加水・冷却濾過なしのカスクストレングス（121〜130プルーフ）が生む圧倒的な集中度。【余韻】オークスパイスとペッパーのヒントが長く続くウォームなフィニッシュ。1988年にブッカー・ノーが世界初のアンカット＆アンフィルタードバーボンとして生み出したジムビームスモールバッチコレクションの最高峰。毎バッチ異なる個性が楽しめる。', 'https://www.bookerswhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ベイカーズ 7年', '【色】リッチなアンバー。【香り】ディープキャラメル、ライスパイス、ナッツ、リコリスの落ち着いたアロマ。【味わい】スパイスの爆発から始まり、ブラウンシュガー、オーク、バニラが続く。7年熟成の深みあるベイキングスパイスとシナモンバーク、オークが一体となったフルフレーバー。107プルーフ（53.5%）のシングルバレルで存在感抜群。【余韻】ドライでシナモニックなオークスパイスの長いフィニッシュ。ジムビームスモールバッチコレクションの一員として、ブッカー・ノーの甥、ベイカー・ビームに敬意を表して名付けられた7年熟成のシングルバレル。', 'https://www.bakersbourbon.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バジルヘイデン', '【色】ライトゴールド。【香り】キャラメル、キャンディコーン、フレッシュカットスカッシュ、レッドフルーツ、バニラ、オークが繊細に混ざり合う。【味わい】スパイシーでスムース、かつリッチで甘い。高ライ麦比率のケンタッキーストレートバーボンならではの洗練されたフレーバー。ライトボディで飲みやすく、バーボン入門にも最適。【余韻】クリーンで短めながら、スパイスとバニラの余韻がほのかに続く。ジムビームスモールバッチコレクションの一員。バジル・ヘイデン・スコットへの敬意を込めた高ライ麦比率の優しいバーボン。', 'https://www.basilhaydenbourbon.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('フォアローゼズ イエローラベル', '【色】ゴールドアンバー。【香り】フローラルなエッセンス、サトルなスパイス、リッチなハチミツのノート。10種のレシピをブレンドした複雑なアロマ。【味わい】フルーティでやわらかく、ラズベリー、クローブ、ナツメグ、スパイスが調和。バーボンらしい甘さとフローラルさが同居する独特のスタイル。【余韻】ほのかにスペアミントとシナモンを感じるミディアムフィニッシュ。フォアローゼズ独自の2種のマッシュビルと5種の酵母で生まれる10レシピをブレンドしたフラッグシップ。バーボンの中でも特に花のような香りが個性的。', 'https://www.fourrosesbourbon.com/bourbon/four-roses-bourbon', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('フォアローゼズ スモールバッチ', '【色】深みのあるアンバー。【香り】ラズベリー、クローブ、ナツメグ、リッチなフルーツアロマが広がる。4種のレシピをブレンドした豊かな香り。【味わい】アプリコット、ライプベリー、バニラ、ライトオークが展開する。ミドルパレットにかけてフルーティな甘さとスパイスのバランスが絶妙。【余韻】スペアミントとシナモンのタッチが長く続く上品なフィニッシュ。フォアローゼズの厳選4レシピをブレンドしたプレミアム版。イエローラベルよりも複雑さと深みが増し、フルーティかつスパイシーな個性が際立つ。', 'https://www.fourrosesbourbon.com/bourbon/small-batch', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('フォアローゼズ シングルバレル', '【色】リッチなアンバー。【香り】ライスパイス、アプリコット、ペアー、シナモン、トーストオーク。OBSVレシピ（マッシュビルBとVイースト）由来の表現豊かな個性。【味わい】存在感ある豊かなライスパイスとアプリコット、ペアー、シナモン、トーストオークの複雑な味わいが展開。フォアローゼズが「際立つエレガントなシングルバレル体験」と表現する逸品。【余韻】長く続くスパイシーでフルーティなフィニッシュ。単一バレルならではの個性と深みが楽しめる、フォアローゼズの最高峰シングルバレル版。', 'https://www.fourrosesbourbon.com/bourbon/single-barrel', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('エヴァンウィリアムス ブラック', '【色】ウォームアンバー。【香り】チョーキーなバニラ、ライトチャードオーク、ライトキャラメルが柔らかく広がる。【味わい】マドルドオレンジリンドとブラウンシュガー、ライトライスパイスが調和する。ヘブンヒルの標準マッシュビル（トウモロコシ78%・ライ麦10%・麦芽大麦12%）によるバランスのとれたフレーバー。43%のアルコール度数で飲みやすい。【余韻】短めながらクリーンで、オークのほのかな温もりが残る。1783年にケンタッキー初の蒸留所を開いたエヴァン・ウィリアムズを冠するヘブンヒルのスタンダードバーボン。コスパ最高のバーボンとして世界的に評価が高い。', 'https://evanwilliams.com/ew-blacklabel', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('エンシェントエイジ', '【色】ライトアンバー。【香り】アップル、キャラメル、ライトオーク、マイルドベイキングスパイス。爽やかでフレッシュな印象。【味わい】アップル、キャラメル、ライトハニーの甘みから始まり、バレルチャーの風味が続く。36ヶ月熟成・80プルーフ（40%）の軽快でアクセスしやすいスタイル。果実感とオーキーさのバランスが心地よい。【余韻】クリーンでショートなフィニッシュ。微かなスパイスが後を引く。バッファロートレース蒸留所が手がける入門向けバーボンで、手頃な価格ながらバッファロートレースらしい品質を感じられる日常使いのスタンダードバーボン。', 'https://www.buffalotracedistillery.com/our-brands/benchmark/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ウッドフォードリザーブ', '【色】リッチなアンバー。【香り】200以上の風味ノートを持つとされる複雑なアロマ。ボールドなグレーンとウッド、スイートアロマティクス、スパイス、フルーツ&フローラルが調和する。【味わい】完璧にバランスのとれたフルボディ。トーストオーク、バニラ、ドライスパイスが展開し、熟成によるリッチさが口全体に広がる。45.2%の理想的なアルコール度数。【余韻】長くウォームで、スパイスと木の香りが調和して続く。ケンタッキー州ヴェルサイユに位置するウッドフォードリザーブ蒸留所で、ポットスティルと連続式蒸留を組み合わせた独自の製法で作られる受賞歴多数の銘酒。', 'https://www.woodfordreserve.com/whiskey/straight-bourbon-whiskey/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ウッドフォードリザーブ ダブルオークド', '【色】ディープアンバー。【香り】ダークフルーツ、キャラメル、シャープハニー、チョコレート、マルジパン、トーストオーク。二度目のオーク熟成による濃厚なアロマ。【味わい】フルボディで、バニラ、ダークキャラメル、ヘーゼルナッツ、アップル、フルーツ、スパイスが複雑に絡み合う。通常品を二度トーストされたバレルでさらに9ヶ月熟成させた独自スタイル。【余韻】長くリッチなフィニッシュ。スイートとオークが美しく調和する。ウッドフォードリザーブの原酒を特別なセカンドチャーバレルで二重熟成させた贅沢な一本。通常品より深みのある甘さと複雑さが魅力。', 'https://www.woodfordreserve.com/whiskey/double-oaked/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('エリジャークレイグ スモールバッチ', '【色】ゴールドアンバー。【香り】ピュアな甘さ、ハチミツ、マルジパン、ワイルドフラワーノート。上品でエレガントな香り。【味わい】リッチなフレーバーとフルボディのバランスが絶妙。特徴的なウォームスパイスとサトルスモークが奥行きを与える。甘さとオークの調和が心地よく、長年愛されてきたスモールバッチの真髄。【余韻】甘さとオークのドライさが引き合う、発音されたロングフィニッシュ。バーボンの父と称されるエリジャー・クレイグ師に敬意を表したヘブンヒルの代表作。コスパとクオリティのバランスが評価され、バーボン愛好家に広く支持される。', 'https://elijahcraig.com/small-batch', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('エリジャークレイグ シングルバレル 18年', '【色】ダークアンバー。【香り】オレンジ、チョコレート、トーストオーク、ハチミツ、バニラ、カスタードが玻璃から溢れ出るような複雑なアロマ。【味わい】バニラとオークが等量でパレットの基盤を形成し、ライトブラウンシュガー、キャラメル、フルーツサラッドのような甘さが加わる。18年熟成という長い年月が生む圧倒的なオークの存在感と甘さの絶妙なバランス。【余韻】非常に長く深いオークのフィニッシュ。ケンタッキーの40シーズンを超えた熟成が生む奇跡のような一本。毎年リリースされる年次限定版として愛好家の間で高い注目を集める。', 'https://elijahcraig.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('レムクーリッジ', '【色】ゴールドアンバー。【香り】ライトキャラメル、バタースコッチ、ソフトバニラ、ウィートの甘い穀物感。ヘブンヒルのウィーテッドバーボンらしい柔らかいアロマ。【味わい】ウェルラウンドでスムース。ウィートを副原料に使用することでライ麦を使うバーボンより柔らかくまろやか。コーンの甘さとウィートの丸みが調和し、6年熟成がもたらす複雑さが加わる。【余韻】ジェントルスイートなフィニッシュ。まろやかなキャラメルと甘さが静かに続く。18世紀のケンタッキー財務長官ジョン・E・フィッツジェラルドの伝説に着想を得たヘブンヒルのウィーテッドスモールバッチバーボン。', 'https://larcenybourbon.com/the-bourbon', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('オールドフォレスター', '【色】アンバー。【香り】バニラ、オーク、スパイス、微かなフルーティなノート。クラシックなバーボンアロマ。【味わい】スパイシーとスイートのバランスが取れたフルボディ。バニラ、キャラメル、ライスパイスが調和する。1870年から続く最古のボトルドバーボンブランドのひとつとしての風格がある。【余韻】ミディアムレングスでクリーンなオークスパイスのフィニッシュ。ブラウンフォーマン社が誇るルイビル産バーボン。禁酒法時代も医療用として製造が許可された数少ない蒸留所のひとつ。米国現存最古のバーボンブランドとして現代も進化を続ける。', 'https://www.oldforester.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('オールドフォレスター 1920', '【色】ディープアンバー。【香り】チェリープリザーブ、チューイーキャラメル、ダークチョコレート、シックメープルシロップ、キャンディドスパイスナッツが強烈に押し寄せる。【味わい】115プルーフ（57.5%）の豊かなボディに、チョコレート、ダークフルーツ、スパイス、モラセスが複雑に展開。禁酒法時代（1920年代）のスタイルを再現した高プルーフ版。【余韻】長く力強く、スパイスとオークが持続する深みあるフィニッシュ。禁酒法施行中も医療用バーボンとして製造を続けたオールドフォレスターの歴史をオマージュした1920プロヒビションスタイル。当時のリッチなフレーバーを115プルーフで忠実に表現。', 'https://www.oldforester.com/products/old-forester-1920-style-prohibition-whisky/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ヘンリーマッケンナ シングルバレル', '【色】ウォームゴールドアンバー。【香り】バニラ、キャラメル、オーク、ライトハーバシャスノート。10年熟成が生む豊かで落ち着いたアロマ。【味わい】スムースなオーク、シャープスパイス、ハチミツ、スイートネスが絡み合う。ボトルドインボンド（50%）の規格を満たす10年熟成シングルバレル。キャラメル、バニラ、熟成オークが伝統的なバーボンの旨味を伝える。【余韻】長くスイート＆スパイシーなフィニッシュが続く。アイルランド移民ヘンリー・マッケンナが故郷の家族レシピをケンタッキーで再現した銘柄。2019年サンフランシスコ世界スピリッツ大会でベストインショーを受賞し注目を集めた。', 'https://heavenhilldistillery.com/henry-mckenna-single-barrel.php', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ウィレットポットスティル', '【色】ゴールドアンバー。【香り】バニラレモンケーキのような上品なアロマに、ソフトなコーン、ジャスミン、シナモン、ジンジャーが重なる。【味わい】キャラメル、バニラ、スパイス、シトラスのバランスがとれたエレガントな味わい。8〜10年熟成・47%のミディアムボディ。ソフト＆デリケートでジャスミン、バニラ、スイートコーン、シナモン、ジンジャーが調和する。【余韻】スパイシーでウォームな余韻が心地よく続く。実際のウィレットポットスティルを完全に再現したユニークなボトル形状で有名。ウィレット蒸留所の個性的なシンボル的一本。', 'https://www.kentuckybourbonwhiskey.com/whiskey/willett-pot-still-reserve/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('エンジェルズエンヴィ', '【色】ゴールドにレッドアンバーが交じる美しい色調。【香り】ポートワイン樽フィニッシュ由来のチェリー、バニラ、トフィー、微かなチョコレートノート。【味わい】ポートワインバレルでフィニッシュされた独自のケンタッキーストレートバーボン。クリーミーなチェリー、キャラメル、マシュマロの甘さにベイキングスパイスとオークタンニン、レッドワインのニュアンスが続く。【余韻】スパイスとオークタンニン、レッドワインが複雑に絡み合う長いフィニッシュ。マスターディスティラーのリンカーン・ヘンダーソンが晩年に生み出した傑作。ポートワイン樽でのフィニッシュという革新的な手法がバーボン界に新風を吹き込んだ。', 'https://www.angelsenvy.com/us/en/product/port-finish/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('パピーヴァンウィンクル 10年', '【色】リッチなカッパーアンバー。【香り】enticingly（魅惑的に）スイートでスパイシーなキャラメルナッツファッジのアロマが広がる。【味わい】フルーティでミディアム〜フルボディ。インテンスなドライフルーツとトーストナッツのノートが展開。107プルーフ（53.5%）のバレル近似プルーフで、豊かさと力強さを兼ね備える。甘さ、スパイス、オークが絶妙なバランス。【余韻】ペッパリーブラウンスパイス、フローラルハニー、チャードバレルの長く大胆なウェーブが続く。ヴァン・ウィンクル家の伝統的ウィーテッドバーボンの真髄。プレミアムバーボン市場を象徴する伝説的ブランドの入門版。', 'https://oldripvanwinkle.com/whiskey/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('パピーヴァンウィンクル 15年', '【色】ディープアンバー。【香り】ヘビーなバニラとバタークリーム、ベリー、トフィーが複雑に重なる。15年熟成ならではの深みあるアロマ。【味わい】キャラメル、バターラム、オークが調和した豊かな味わい。ウィーテッドマッシュビルによる優雅な甘さと、長熟による複雑さが融合する。53.5%の力強いアルコール感もエレガントに仕上がる。【余韻】非常に長く深い。バニラ、キャラメル、スパイスのハーモニーが続く圧倒的なフィニッシュ。世界で最も入手困難なバーボンのひとつ。毎年秋に行われるパピー狩りを熱狂させるヴァン・ウィンクルのプレミアムライン。', 'https://oldripvanwinkle.com/whiskey/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ミクターズ バーボン', '【色】ゴールドアンバー。【香り】リッチキャラメル、バランスのとれたバニラ、ストーンフルーツのノート、スモーキーなデプス。【味わい】キャラメルとバニラを中心に、ストーンフルーツ、ライスパイスが重なる。バーボンを個別のバーレルでボトリング前にヒートサイクリング処理する独自技法により、風味が引き出される。【余韻】オーキーなフィニッシュが心地よく続く。ミクターズはパーツビルグ最古の蒸留所の系譜を持ち、現在はルイビルで最先端の設備で生産される。2025年世界で最も称賛されるウィスキーに選ばれた伝統と革新が共存する銘柄。', 'https://michters.com/kentucky-straight-bourbon/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ミクターズ スモールバッチ', '【色】ゴールドアンバー。【香り】リッチキャラメル、バランスのとれたバニラ、ストーンフルーツ、スモーキーなデプス。スモールバッチならではの豊かなアロマ。【味わい】キャラメル、バニラ、ストーンフルーツ、スモーキーデプスが一体となったオークフィニッシュ。ヒートサイクリングされたバレルを選定した少数のバレルだけをブレンドしたスモールバッチスタイル。【余韻】オーキーでスムースな余韻が続く。US*1スモールバッチはミクターズの中心的表現。特別なヒートサイクリング処理を施した厳選バレルのみをブレンドした妥協なきスモールバッチボーボン。', 'https://michters.com/kentucky-straight-bourbon/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('スタッグジュニア', '【色】ディープアンバー。【香り】リッチでスイートなチョコレートとブラウンシュガーの誘惑的なアロマ。ライスパイスとダークフルーツも感じる。【味わい】リッチでスイートなチョコレートとブラウンシュガーがパーフェクトなバランスのライスパイシーさと混ざり合う。バレルプルーフ（約65%前後）の高いアルコール感が迫力ある。【余韻】チェリー、クローブ、スモーキーさのヒントが長く続く。ジョージT.スタッグの若い弟分として生まれたバッファロートレースのバレルプルーフバーボン。マスターディスティラー、ハーレン・ウィートリーが監修する8〜9年熟成のアンカット版。', 'https://www.buffalotracedistillery.com/our-brands/stagg.html', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジョージT. スタッグ', '【色】ダークマホガニーアンバー。【香り】ラッシュトフィースイートネスとダークチョコレート、バニラ、ファッジ、ヌガー、モラセスのヒント。デーツ、タバコ、ダークベリー、スペアミント、コーヒーが奥行きを与える。【味わい】圧倒的な集中度と深み。15年以上熟成のアンカット＆アンフィルタード（約65%前後）ゆえの迫力ある風味。チョコレート、モラセス、スパイスが波状に押し寄せる。【余韻】非常に長く深いオークとスパイスの余韻が続く。バッファロートレース・アンティーク・コレクションの頂点に立つ一本。毎年秋の限定リリースが愛好家の間で熾烈な争奪戦となる伝説的バーボン。', 'https://www.buffalotracedistillery.com/our-brands/george-t-stagg/george-t-stagg-bourbon/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ウィリアムラロー12年', '【色】リッチなカッパーアンバー。【香り】クリーミーなバニラ、キャラメル、モラセスに加え、キャンディドコーン、ライプフルーツ、ダークフルーツ、ドライフルーツ、カカオパウダーが広がる。【味わい】バッファロートレースのウィーテッドマッシュビルによるソフトで甘いキャラクター。ミントのヒント、フルーツ、バニラが続くエレガントなスタイル。12年熟成の深みとウィートのやわらかさが見事に調和。【余韻】エレガントでソフト。ミント、フルーツ、バニラが静かに消えていく長い余韻。W.L.ウェラーの12年熟成版。パピーヴァンウィンクルと同じウィーテッドマッシュビルを使用し、高い評価を得るプレミアムウィーテッドバーボン。', 'https://www.buffalotracedistillery.com/our-brands/w-l-weller/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ウェラー スペシャルリザーブ', '【色】ゴールドアンバー。【香り】バニラビーン、キャラメル、ハチミツ、ジェントルオーク、バタースコッチ、スイートコーン。フローラルノートとフレッシュブレッドのヒント。【味わい】シルキーテクスチャー。トフィー、ブラウンシュガー、スイートバニラクリーム、アーモンド、ハチミツ、ライトオークスパイスがコートする。ウィートがどんな辛さも和らげ、甘さと温かさを際立たせる。【余韻】クリーンでリンガリング。キャラメル、オーク、ソフトベイキングスパイスが穏やかにフェードアウトする。W.L.ウェラーシリーズのエントリー版。パピーと同じウィーテッドレシピによる滑らかさで「プア・マンズ・パピー」とも呼ばれる。', 'https://www.buffalotracedistillery.com/our-brands/w-l-weller/w-l-weller-special-reserve/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ウェラー アンティーク 107', '【色】リッチなゴールドアンバー。【香り】バニラ、キャラメル、ハチミツ、コーンの甘い香り。ウィーテッドバーボンらしい柔らかいアロマに、ほのかなスパイスが加わる。【味わい】非常によくバランスのとれたスイートフルーツノート、ストロングバニラアンダートーン、シャープなスパイシートーン。107プルーフ（53.5%）の力強さとウィートの柔らかさが同居する。【余韻】シナモンフィニッシュが心地よく続く。W.L.ウェラーシリーズの中でも高めのプルーフで存在感を示す一本。パピーヴァンウィンクルと同一のウィーテッドマッシュビルによる優雅なバーボン。', 'https://www.buffalotracedistillery.com/our-brands/w-l-weller/w-l-weller-antique-107/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ベンチマーク オールドナンバー8', '【色】ライトアンバー。【香り】キャラメルノートにデリケートなストーンフルーツのバックドロップ。バッファロートレースらしい穏やかで親しみやすいアロマ。【味わい】ロバストでスタージーなパレット。ファインレザーノートにドライタバコ、タッチオブオーク、ドライドチェリーのヒントが絡む。最低3年熟成・80プルーフ（40%）の飲みやすいスタイル。【余韻】クリーンでショートからミディアムのフィニッシュ。バッファロートレース蒸留所が誇るアクセスしやすい日常向けバーボン。手頃な価格ながらバッファロートレースのローライ麦マッシュビルによる品質が光る。', 'https://www.buffalotracedistillery.com/our-brands/benchmark/benchmark-old-no-8-brand/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('タウンブランチ', '【色】ゴールドアンバー。【香り】リッチオーク、キャラメル、バニラに、アップル、チェリー、ドライアプリコットなどのオーチャード＆ストーンフルーツノートが重なる。【味わい】高いモルト比率のマッシュビルが生む独特の複雑さ。オーク、キャラメル、バニラの基盤にフルーティな甘さが加わる。平均7年近くの熟成が生むバランスのとれた豊かな風味。【余韻】フルーティでウォームな余韻が続く。ルイビルのレキシントンブリューイング＆ディスティリングカンパニー製。ケンタッキーバーボントレイルにある唯一のブリューワリー＆ディスティラリーで、石灰岩の湧水タウンブランチに名を冠したバーボン。', 'https://lexingtonbrewingco.com/whiskey-spirits/town-branch/town-branch-kentucky-straight-bourbon-whiskey', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ============================================================
-- IRISH WHISKY
-- ============================================================

-- IRISH WHISKY bottle_info INSERT
-- 生成日: 2026-04-18

-- ジェムソン オリジナル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジェムソン オリジナル', '【色】明るいゴールド。【香り】バニラ、蜂蜜、スパイスが調和した甘くフルーティな香り。わずかにウッディなニュアンスも。【味わい】なめらかでバランスの取れた口当たり。甘いシェリーの果実味とモルトの穏やかな甘み、ライトなスパイスが絡み合う。【余韻】クリーンでスムーズ、ほのかにナッティな風味が続く心地よい余韻。アイリッシュウィスキーを代表するブレンデッドで、世界中で愛されるアイコニックな一本。', 'https://www.jamesonwhiskey.com/ja-JP/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ジェムソン ブラックバレル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジェムソン ブラックバレル', '【色】深みのあるアンバーゴールド。【香り】チャーしたオークのバニラとキャラメル、ダークチョコレート、スパイスが豊かに広がる。【味わい】ダブルチャードバーボン樽でフィニッシュを施した複雑な構成。濃厚なバニラとトフィー、シナモンのスパイスが重なり合う豊かな口当たり。【余韻】ウッディでスパイシーな長い余韻。ジェムソンシリーズの中でも特にリッチでボルドーな風味が特徴の上位グレード。', 'https://www.jamesonwhiskey.com/ja-JP/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ジェムソン コールドブリュー
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジェムソン コールドブリュー', '【色】明るいアンバー。【香り】コーヒーの芳醇な香りとウィスキーのバニラ・キャラメルが融合したユニークなアロマ。【味わい】ジェムソンオリジナルをコールドブリューコーヒー樽でフィニッシュ。コーヒーのほろ苦さとウィスキーの甘みが絶妙に調和し、チョコレートやモカのニュアンスが楽しめる。【余韻】コーヒーとバニラの余韻がほどよく続く。コーヒーリキュールとは異なる洗練されたコーヒーウィスキーとして人気を集める一本。', 'https://www.jamesonwhiskey.com/ja-JP/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ジェムソン カスクメイツ IPA
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジェムソン カスクメイツ IPA', '【色】明るいゴールド。【香り】ホップの爽やかな草木香とシトラス、麦芽の甘い香りが共存するユニークなアロマ。【味わい】IPAビール樽でフィニッシュを施したクラフト感あふれる一本。ホップのほろ苦さとシトラスの風味、ジェムソンらしいバニラと蜂蜜の甘みが見事に融合。【余韻】爽やかなホップのビター感が続くドライな余韻。ウィスキーとクラフトビールの両方が好きな方にぴったりのコラボレーション作品。', 'https://www.jamesonwhiskey.com/ja-JP/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ジェムソン カスクメイツ スタウト
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ジェムソン カスクメイツ スタウト', '【色】深みのあるアンバー。【香り】ロースト麦芽のコーヒー香とダークチョコレート、ジェムソンのバニラと蜂蜜が混ざり合う芳醇なアロマ。【味わい】スタウトビール樽でフィニッシュした重厚感のある一本。ダークチョコレートやモカのほろ苦さ、キャラメルの甘みがジェムソンのスムーズな口当たりに乗って広がる。【余韻】ロースト感とスパイスが長く続く充実した余韻。スタウト好きのウィスキーファンに特に支持される。', 'https://www.jamesonwhiskey.com/ja-JP/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- タラモア デュー
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('タラモア デュー', '【色】明るいゴールド。【香り】甘いモルト、バニラ、フルーツのライトで親しみやすいアロマ。【味わい】モルト、グレーン、ポットスティルの3種をブレンドしたアイリッシュウィスキーの典型。ライトで滑らか、フルーティな甘み、ほのかなスパイスが心地よく広がる。【余韻】クリーンでドライ、わずかにウッディな後味。オフェリー州の伝統を受け継ぐ歴史ある銘柄で、親しみやすく飲みやすいオールラウンダー。ハイボールやカクテルベースにも最適。', 'https://www.tullamoredew.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- タラモア デュー XO ラム カスク
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('タラモア デュー XO ラム カスク', '【色】深みのあるゴールドアンバー。【香り】カリビアンラム樽の影響によるトロピカルフルーツ、バナナ、バニラ、ブラウンシュガーの甘く豊かなアロマ。【味わい】タラモアデューの3種ブレンドをラムカスクでフィニッシュした贅沢な仕上がり。トロピカルフルーツの甘み、ラムの芳醇さ、モルトの穏やかな甘みが複雑に絡み合う。【余韻】甘くてウォーミング、ラムのエキゾチックな余韻が続く。通常のタラモアデューよりもリッチで個性的な一本。', 'https://www.tullamoredew.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ブッシュミルズ オリジナル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブッシュミルズ オリジナル', '【色】ライトゴールド。【香り】軽やかな甘み、バニラ、フレッシュなフルーツが漂う清涼感あるアロマ。【味わい】世界最古のライセンス蒸留所として知られるブッシュミルズのエントリーモデル。トリプルディスティレーションによる滑らかさが際立ち、モルトの甘みと軽いスパイスが心地よく展開。【余韻】クリーンでライト、短めながらも爽やかな余韻。北アイルランドのブッシュミルズ蒸留所が誇る飲みやすいブレンデッドウィスキーで、ハイボールに最適。', 'https://www.bushmills.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ブッシュミルズ ブラックブッシュ
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブッシュミルズ ブラックブッシュ', '【色】深みのあるアンバー。【香り】シェリーの豊かなドライフルーツ、ダークチェリー、チョコレート、スパイスが複雑に絡み合うリッチなアロマ。【味わい】オロロソシェリー樽熟成原酒を多く使用した上位グレード。シェリーの甘酸っぱい果実味と濃厚なバニラ、スパイスが力強く広がるフルボディな味わい。【余韻】ドライフルーツとスパイスの深い余韻が長く続く。ブッシュミルズの中でも特に人気が高く、シェリー系ウィスキーが好みの方に強くお勧めできる傑作。', 'https://www.bushmills.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ブッシュミルズ 10年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブッシュミルズ 10年', '【色】明るいアンバー。【香り】フレッシュなリンゴ、洋梨、バニラ、ほのかなシェリーが調和したエレガントなアロマ。【味わい】バーボン樽とシェリー樽で10年以上熟成したシングルモルト。トリプルディスティレーション由来の滑らかさに加え、フルーティな甘みとモルトの深みが心地よく展開する。【余韻】ナッティでほのかに甘い中長度の余韻。アイリッシュシングルモルトとしての優雅さと飲みやすさを兼ね備え、ウィスキー入門者からベテランまで幅広く楽しめる一本。', 'https://www.bushmills.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ブッシュミルズ 16年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブッシュミルズ 16年', '【色】深みのあるマホガニー。【香り】濃厚なシェリーのドライフルーツ、ダークチョコレート、トースト、スパイス、バニラが複雑に混ざり合うリッチなアロマ。【味わい】バーボン樽・シェリー樽熟成後にポートワイン樽でフィニッシュした三段熟成シングルモルト。凝縮されたフルーツ、ポートの甘み、スパイスが重なる複雑で深みのある味わい。【余韻】ポートの甘さとスパイスが長く残る濃厚な余韻。特別なシーンにふさわしい格調高いアイリッシュシングルモルト。', 'https://www.bushmills.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ブッシュミルズ 21年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブッシュミルズ 21年', '【色】深いルビーアンバー。【香り】熟成したマデイラワインの豊かな香り、濃縮ドライフルーツ、ダークチョコレート、革、タバコの葉という複雑で成熟したアロマ。【味わい】バーボン樽・シェリー樽で長期熟成後、マデイラワイン樽でフィニッシュした最高峰のブッシュミルズ。深みとエレガンスが極限まで高まり、凝縮されたフルーツとスパイス、シルキーな口当たりが至高の体験をもたらす。【余韻】複雑で長い余韻。アイリッシュウィスキーの最高峰のひとつとして世界的に高く評価される。', 'https://www.bushmills.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- パワーズ ゴールドラベル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('パワーズ ゴールドラベル', '【色】明るいゴールド。【香り】ポットスティルウィスキー特有のスパイシーで油性のアロマ、グリーンアップル、バニラ、麦芽の甘みが漂う。【味わい】アイリッシュポットスティルウィスキーの伝統を体現するダブリン生まれの銘柄。未発芽大麦由来のスパイシーでオイリーなポットスティル特性が前面に出つつ、バニラと麦芽の甘みがバランスを保つ独特の個性。【余韻】スパイシーでウォーミング、ほのかにオイリーな長い余韻。アイリッシュポットスティルスタイルの入門として最適。', 'https://www.powersirishwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- パワーズ ジョンズレーン 12年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('パワーズ ジョンズレーン 12年', '【色】深みのあるアンバーゴールド。【香り】ポットスティルの複雑なスパイス、バニラ、バターキャラメル、オーク、シェリーのドライフルーツが複層的に広がる豊かなアロマ。【味わい】元々パワーズが蒸留していたジョンズレーン蒸留所にちなんで名付けられたプレミアム12年。シングルポットスティルの醍醐味であるスパイシーで力強い個性と、長期熟成が与える円熟した甘みが見事に融合。【余韻】長く続くスパイスとオーク、モルトの複雑な余韻。アイリッシュポットスティルウィスキーの最高峰のひとつ。', 'https://www.powersirishwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- レッドブレスト 12年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('レッドブレスト 12年', '【色】明るいアンバー。【香り】シェリーの熟したフルーツ、バニラ、スパイス、トーストしたオーク、ほのかにナッツのアロマが複雑に絡み合う。【味わい】アイリッシュシングルポットスティルウィスキーの代名詞的存在。バーボン樽とシェリー樽で12年熟成した豊かな味わいは、未発芽大麦由来のスパイシーな個性とシェリーのフルーツ感が見事に融合。フルボディで複雑ながらも飲みやすい。【余韻】スパイスとシェリーの甘みが長く続く満足感の高い余韻。世界的に絶賛される名作。', 'https://www.redbreastwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- レッドブレスト 15年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('レッドブレスト 15年', '【色】深みのあるアンバー。【香り】シェリーとバーボン樽の複合的な影響によるドライフルーツ、バニラ、キャラメル、スパイス、革のアロマ。非常に複雑で深みがある。【味わい】15年の長期熟成が与える格別の円熟味。ポットスティル特有のスパイシーな個性は保ちつつも、シェリーとバーボンの甘みが穏やかにまとめ上げた贅沢な味わい。豊かなフルーツ、バニラ、スパイスが口の中で重なり合う。【余韻】複雑で非常に長い余韻。12年を超える深みと複雑さで、世界のウィスキーランキングでも常に上位に輝く傑作。', 'https://www.redbreastwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- レッドブレスト 21年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('レッドブレスト 21年', '【色】深いマホガニーアンバー。【香り】長期熟成の恩恵による極めて複雑なアロマ。濃縮されたトロピカルフルーツ、チョコレート、スパイス、革、タバコ、シェリーが重層的に広がる。【味わい】21年の熟成を経た究極のシングルポットスティルウィスキー。圧倒的な複雑さと深みの中にポットスティルの個性が息づき、シェリー、バーボン両樽の最良の特性が融合した至高の仕上がり。【余韻】果てしなく続く複雑で豊かな余韻。ウィスキー界で最も称賛されるアイリッシュウィスキーのひとつで、特別な機会に楽しみたい最高級品。', 'https://www.redbreastwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- レッドブレスト カスクストレングス
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('レッドブレスト カスクストレングス', '【色】深みのあるアンバーゴールド。【香り】カスクストレングス（樽出し原酒）ならではの凝縮されたアロマ。シェリーの濃厚なフルーツ、スパイス、ナッツ、バニラ、オークが力強く広がる。【味わい】無加水のフルパワーで楽しむレッドブレスト。高アルコールが口に入ると同時に広がる濃密なポットスティルキャラクター、シェリーのフルーツ、豊かなスパイスが圧倒的な体験をもたらす。加水すると新たなフレーバーが開く。【余韻】非常に長く燃えるような余韻。ウィスキー愛好家が強く求めるエクスペリエンス。', 'https://www.redbreastwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- グリーンスポット
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グリーンスポット', '【色】明るいゴールド。【香り】グリーンアップル、洋梨、スパイス、新鮮な麦芽、わずかにシェリーが混ざるフレッシュで爽やかなアロマ。【味わい】ミドルトン蒸留所産のシングルポットスティルウィスキーで、かつてダブリンのワインビジネスで使われた「スポット」の名を引き継ぐ伝統の銘柄。バーボン樽とシェリー樽で熟成され、未発芽大麦由来のスパイシーな個性とフルーティな甘みが調和。【余韻】スパイシーでフルーティ、程よい長さの余韻。シングルポットスティルの入門として高く評価される。', 'https://www.spotwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- グリーンスポット シャトーレオビル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グリーンスポット シャトーレオビル', '【色】濃いゴールドアンバー。【香り】ボルドーの名門シャトー・レオビルのワイン樽フィニッシュによるレッドベリー、カシス、赤ワインの芳醇なアロマにポットスティルのスパイスが重なる。【味わい】グリーンスポットをフランス・ボルドーのシャトーレオビル産ワイン樽でフィニッシュした限定品。ダークベリー、チェリー、バニラ、スパイスが複雑に絡み合い、ワインとウィスキーの素晴らしい融合を体現。【余韻】赤ワインの果実感とスパイスが心地よく続く余韻。ワイン愛好家にも響く個性的な一本。', 'https://www.spotwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- イエロースポット 12年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('イエロースポット 12年', '【色】明るいアンバーゴールド。【香り】マルサラワイン樽の独特な甘みとスパイス、バーボン樽のバニラ、シェリー樽のドライフルーツが三位一体となった複雑なアロマ。【味わい】バーボン、シェリー、マルサラの3種の樽で12年熟成した贅沢なシングルポットスティル。マルサラ由来の独特のナッティな甘みと複雑なスパイスが、ポットスティル本来の個性に深みを加える。【余韻】長くスパイシーで甘みのある余韻。スポットシリーズの中核を担う人気銘柄で、複雑な味わいを求めるウィスキーファンに最適。', 'https://www.spotwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- レッドスポット 15年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('レッドスポット 15年', '【色】深みのあるアンバー。【香り】バーモウスワイン樽フィニッシュの影響によるハーブ、スパイス、ドライフルーツ、フレッシュオレンジ、バニラが複雑に絡み合うエキゾチックなアロマ。【味わい】バーボン、シェリー、バーモウスの3樽で15年熟成した希少なシングルポットスティル。バーモウスのハーブ感とビタースパイスがポットスティルの個性に複雑さを加え、オレンジの果実感とバニラの甘みが絶妙にバランス。【余韻】長くハーブ感とスパイスが続く独特の余韻。スポットシリーズの最高峰に位置する傑作。', 'https://www.spotwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ブルースポット 7年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ブルースポット 7年', '【色】明るいゴールド。【香り】フォーティファイドワイン樽フィニッシュの影響でドライフルーツ、オレンジの皮、シナモン、スパイスが心地よく漂うフレッシュなアロマ。【味わい】7年熟成の若々しいエネルギーが弾けるシングルポットスティル。フォーティファイドワイン樽のフィニッシュが加わることで、ポットスティル特有のスパイシーな個性にフルーティな甘みと活力が融合した生き生きとした味わい。【余韻】スパイシーでフルーティ、やや短めながら印象的な余韻。スポットシリーズの中でも最も若くダイナミックな一本。', 'https://www.spotwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ミドルトン ベリーレア
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ミドルトン ベリーレア', '【色】深みのあるゴールドアンバー。【香り】極めて複雑で豊か。熟したトロピカルフルーツ、バニラ、キャラメル、スパイス、オークが重層的に広がる至高のアロマ。【味わい】アイリッシュウィスキー界最高の名誉を持つアニュアルリリースの至宝。毎年異なるブレンドで発表されるため一期一会の体験。シングルポットスティルとシングルモルトの最上の原酒を組み合わせ、深みとエレガンスが極限に達した複雑な味わい。【余韻】果てしなく続く複雑で余韻豊かな長い後味。世界屈指の希少ウィスキーとして愛好家が熱狂的に求める特別な一本。', 'https://www.midletonveryrare.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- キルベガン オリジナル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('キルベガン オリジナル', '【色】明るいゴールド。【香り】穀物の甘み、バニラ、軽いフルーツ、わずかなスパイスが漂う親しみやすいアロマ。【味わい】世界最古の蒸留所のひとつとして知られるアイルランド・ウェストミースのキルベガン蒸留所産。グレーンとモルトをブレンドしたライトでなめらかな口当たりが特徴。バニラ、蜂蜜、軽いフルーティな甘みが心地よく広がる飲みやすい味わい。【余韻】クリーンでほのかに甘い余韻。アイリッシュウィスキーの歴史と伝統を感じながら気軽に楽しめるデイリーウィスキーとして人気が高い。', 'https://www.kilbegganirishwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- キルベガン 8年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('キルベガン 8年', '【色】アンバーゴールド。【香り】8年熟成が加えた深みとともに、バニラ、キャラメル、フルーツ、ほのかなスパイスが複雑に広がるアロマ。【味わい】キルベガン蒸留所の伝統的なポットスティル蒸留と8年以上の樽熟成が生み出すプレミアムな味わい。バニラとキャラメルの甘み、フルーティなニュアンス、スパイスのバランスが向上し、オリジナルより一層複雑で満足度の高い体験を提供。【余韻】スパイシーでほのかにウッディな中長度の余韻。キルベガンの底力を示す中級グレードとして愛好家から高い評価を受ける。', 'https://www.kilbegganirishwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- コネマラ ピーテッド
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('コネマラ ピーテッド', '【色】明るいゴールド。【香り】アイリッシュウィスキーには珍しいピート香が前面に出つつ、その奥にバニラ、フルーツ、麦芽の甘みが感じられる個性的なアロマ。【味わい】アイルランド西部コネマラ地方のクーリー蒸留所産のピーテッドシングルモルト。スコッチに親しみのあるスモーク感と、アイリッシュ由来のトリプルディスティレーションが生む滑らかさが融合した唯一無二のキャラクター。燻製風味と甘みのコントラストが楽しい。【余韻】スモーキーで長く続くピートの余韻。スモーキーウィスキー愛好家に特に人気の希少なアイリッシュウィスキー。', 'https://www.connemarawhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- コネマラ 12年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('コネマラ 12年', '【色】アンバーゴールド。【香り】ピートと長期熟成が融合した複雑なアロマ。スモーキーな奥にバニラ、キャラメル、スパイス、かすかにシェリーが感じられる。【味わい】12年の熟成を経てスモーキーキャラクターに深みと円熟味が加わった上位グレード。ピートの燻製感がより洗練され、バニラ、フルーツ、スパイスの複雑な要素と調和した優雅な仕上がり。加水によりさらに豊かな味わいが開く。【余韻】長く複雑なスモーキーで甘みのある余韻。ピーテッドとの飲み比べで熟成の魔法を実感できる一本として愛好家に強く支持される。', 'https://www.connemarawhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ティーリング スモールバッチ
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ティーリング スモールバッチ', '【色】明るいゴールドアンバー。【香り】ラム樽フィニッシュ由来のトロピカルフルーツ、バナナ、バニラに、スパイスとほのかな麦芽の甘みが加わるフレッシュなアロマ。【味わい】ダブリン市内に100年以上ぶりに開設されたティーリング蒸留所のシグネチャーブレンド。ラム樽でフィニッシュを施したモルトとグレーンのブレンドはフルーティで甘く、スパイシーな個性が若々しく弾ける活力ある味わい。【余韻】バニラとスパイスの心地よい余韻。ニューウェーブアイリッシュウィスキーを代表するモダンで飲みやすい一本。', 'https://www.teelingwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ティーリング シングルグレーン
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ティーリング シングルグレーン', '【色】明るいゴールド。【香り】カリフォルニアのレッドワイン樽フィニッシュ由来のレッドベリー、バニラ、キャラメル、フルーツのフレッシュなアロマ。【味わい】100%コーンから蒸留したシングルグレーンをカリフォルニアワイン樽でフィニッシュした珍しいスタイル。グレーンウィスキーらしい軽やかでスムーズな口当たりにワイン樽の甘みと果実感が加わり、非常に飲みやすく洗練された味わい。【余韻】フルーティで甘いライトな余韻。ウィスキー初心者にも親しみやすく、食前酒としても優秀な新感覚アイリッシュ。', 'https://www.teelingwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ティーリング シングルモルト
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ティーリング シングルモルト', '【色】アンバーゴールド。【香り】5種類の異なるワイン樽フィニッシュを使用した複雑で魅力的なアロマ。ベリー、スパイス、モルト、オーク、フルーツが変化に富んだ表情を見せる。【味わい】シェリー、マデイラ、ポート、ホワイトバーガンディ、ソーテルヌの5樽を使い分けた贅沢なシングルモルト。各樽の影響が複雑なフレーバーを生み、フルーティで豊かかつ洗練された飲み応えを実現。【余韻】複雑で長い果実感とスパイスの余韻。ティーリングの実力を最もよく示す看板製品で国際的に多数の賞を受賞している。', 'https://www.teelingwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ティーリング ブラックピッツ
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ティーリング ブラックピッツ', '【色】深みのあるゴールドアンバー。【香り】ピートとワイン樽のユニークな組み合わせによるスモーキーさ、ベリー系フルーツ、バニラ、スパイスの個性的なアロマ。【味わい】ダブリンのブラックピッツ地区（かつての大麦乾燥地）にちなんだピーテッドシングルモルト。ピートスモークのアイリッシュ版としてワイン樽フィニッシュと組み合わせ、スモーキーな個性にフルーティで複雑な要素が加わる独自スタイル。【余韻】スモーキーでフルーティ、余韻が長く続く。コネマラとは異なる都会的なピーテッドアイリッシュとして注目を集める。', 'https://www.teelingwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- タイプコネル シングルモルト
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('タイプコネル シングルモルト', '【色】明るいゴールド。【香り】トロピカルフルーツ、バニラ、フレッシュな麦芽、ほのかなフローラルが漂う軽やかで爽やかなアロマ。【味わい】アイルランド北西部ドネゴール地方の伝説的な蒸留所の名を冠したシングルモルト。クーリー蒸留所で製造されるトリプルディスティレーションによる滑らかな口当たりが特徴。バニラ、フルーツの甘み、軽いスパイスがバランスよく広がるエレガントな味わい。【余韻】フルーティでクリーン、スッキリとした余韻。アイリッシュシングルモルトの中でも特に飲みやすく、日本でも人気の銘柄。', 'https://www.tyrconnellwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- グレンダロッホ ダブルバレル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンダロッホ ダブルバレル', '【色】明るいゴールドアンバー。【香り】バーボン樽とシェリー樽のダブルバレル熟成によるバニラ、蜂蜜、フルーツ、ほのかなスパイスのバランス良いアロマ。【味わい】ウィックロー山中の谷間に湧く天然水を使用したウィックロウ・ウルフス社のシングルモルト。バーボンとシェリーの2樽をバランスよく活用することで、甘みと複雑さを両立。バニラ、キャラメル、フルーティな甘み、スパイスが穏やかに調和した飲みやすい一本。【余韻】甘くスムーズな余韻。クラフト感あふれるモダンアイリッシュの代表格として急速に人気を集めている。', 'https://www.glendaloughwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- グレンダロッホ 7年
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('グレンダロッホ 7年', '【色】アンバーゴールド。【香り】7年の熟成とボルドーワイン樽フィニッシュによるレッドベリー、チェリー、バニラ、スパイスのフルーティで魅力的なアロマ。【味わい】7年熟成の原酒をボルドーワイン樽でフィニッシュした個性豊かなシングルモルト。ワイン樽の赤系フルーツと甘さがモルトの穏やかな甘みに重なり、適度なスパイスと複雑さが加わる。ダブルバレルより一層リッチで果実感のある味わい。【余韻】フルーティでスパイシーな余韻が中程度続く。ウィスキーとワインの両好きに特にお勧めできる個性的な一本。', 'https://www.glendaloughwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- スラーン アイリッシュウィスキー
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('スラーン アイリッシュウィスキー', '【色】明るいゴールド。【香り】バーボン樽とワイン樽のブレンド熟成によるバニラ、フルーツ、ほのかなスパイスと甘みが調和したフレッシュなアロマ。【味わい】ミース州スラーン城を背景に持つ歴史あるブランドが手がけるブレンデッドアイリッシュウィスキー。バージンオーク、バーボン、マルサラ、シェリーの4種の樽を使用した多樽熟成が複雑なフレーバーを生む。バニラ、フルーツ、スパイスが軽やかに絡み合うリッチで飲みやすい味わい。【余韻】スパイシーで甘みのある余韻。モダンアイリッシュウィスキーの旗手として国際市場で急成長中。', 'https://www.slanewhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ロウアンドコー ブレンデッド
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ロウアンドコー ブレンデッド', '【色】明るいゴールド。【香り】バニラ、フレッシュフルーツ、軽い麦芽の甘みが優しく漂うフレッシュで親しみやすいアロマ。【味わい】ダブリン発のクラフト蒸留所が手がけるモダンなブレンデッドアイリッシュウィスキー。飲みやすさと個性のバランスを重視した設計で、バニラと蜂蜜の甘み、穀物のナチュラルな風味、軽やかなスパイスが心地よく広がる。カクテルにも使いやすいスムーズな仕上がり。【余韻】クリーンでほのかに甘い余韻。若い世代を中心にアイリッシュウィスキーへの入口として支持を集めるフレッシュな銘柄。', 'https://www.rowandco.ie/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- パドリーズ アイリッシュウィスキー
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('パドリーズ アイリッシュウィスキー', '【色】明るいゴールド。【香り】蜂蜜、バニラ、フレッシュアップル、軽いスパイスが漂う明るくフレンドリーなアロマ。【味わい】アイリッシュウィスキーのアイコン「St. Patrick''s Day」の文化に根差したブレンデッドウィスキー。シングルモルト、グレーン、ポットスティルを組み合わせ、蜂蜜とフルーツの甘さ、軽いスパイスが調和するバランス重視の親しみやすい味わい。ストレートでもロックでもカクテルでも楽しめる汎用性の高さが特徴。【余韻】短めながら甘くクリーンな余韻。アイリッシュパブのカジュアルなシーンで広く愛飲される。', 'https://www.paddyirishwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- セクストン シングルモルト
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('セクストン シングルモルト', '【色】深みのあるアンバー。【香り】オロロソシェリー樽熟成による濃厚なドライフルーツ、レーズン、ダークチョコレート、スパイスのリッチなアロマ。【味わい】北アイルランドのブッシュミルズで蒸留されたシングルモルトをオロロソシェリー樽のみで熟成させた個性的な銘柄。シェリー一辺倒の熟成がもたらす濃厚な果実感、チョコレート、ナッツ、スパイスが複雑に絡み合う力強い味わい。【余韻】シェリーのドライフルーツとスパイスが長く続くリッチな余韻。シェリー樽熟成好きに特に強くお勧めできる、インパクトある美しいボトルデザインでも人気の一本。', 'https://www.thesextonwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ライターズティアーズ カッパーポット
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ライターズティアーズ カッパーポット', '【色】明るいゴールドアンバー。【香り】フレッシュな洋梨、リンゴ、バニラ、シリアルの甘みが爽やかに広がるシングルポットスティルらしい生き生きとしたアロマ。【味わい】アイルランドのウォルシュウィスキー社が手がけるシングルポットスティルとシングルモルトのブレンド。ポットスティルのスパイシーなオイリーさとモルトのフルーティな甘みが融合し、フレッシュでエレガントな口当たりが印象的。【余韻】スパイシーでフルーティ、程よい長さの後味。アイリッシュ文学の伝統に敬意を表したブランドコンセプトも魅力で、ギフトとしても非常に人気が高い。', 'https://www.writerstearswhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- ライターズティアーズ ポートカスク
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('ライターズティアーズ ポートカスク', '【色】深みのあるアンバーゴールド。【香り】ポートワイン樽フィニッシュによるダークチェリー、プラム、チョコレート、スパイスのリッチなアロマ。ベースのポットスティルのフルーティさも感じられる。【味わい】カッパーポットをポートワイン樽でフィニッシュした上位グレード。ポートの甘みと濃厚なダークフルーツがシングルポットスティルの個性に深みを加え、チョコレートやスパイスも加わる豊かな複雑さ。【余韻】ポートのフルーツ感とスパイスが長く温かく続く余韻。カッパーポットファンが次に試すべき一本として高く評価される。', 'https://www.writerstearswhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- バスカー アイリッシュウィスキー
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バスカー アイリッシュウィスキー', '【色】明るいゴールド。【香り】蜂蜜、バニラ、フルーツ、軽い穀物の甘みが漂うフレンドリーで爽やかなアロマ。【味わい】ダブリンのロイヤルオークブレンダーズが手がけるモルト、グレーン、ポットスティルの3種をブレンドしたアイリッシュトリプルカスク。名前はダブリンの街角で演奏する大道芸人（バスカー）に由来。バニラと蜂蜜の甘み、フルーティな軽さ、ほのかなスパイスが心地よく調和した飲みやすい味わい。【余韻】クリーンでほのかに甘く短い余韻。コストパフォーマンスが高く、日常使いに最適な一本として日本でも注目度急上昇中。', 'https://www.thebuskerwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- バスカー シングルモルト
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バスカー シングルモルト', '【色】明るいアンバーゴールド。【香り】バーボン樽熟成によるバニラ、フルーティな甘み、軽いスパイス、モルトの穀物香が調和したエレガントなアロマ。【味わい】ロイヤルオーク蒸留所のシングルモルトをバーボン樽で熟成したバスカーシリーズのモルト部門。トリプルディスティレーションの滑らかな口当たりにバニラとフルーツの甘みが乗り、ほどよいスパイスと穀物の風味が広がる。【余韻】スムーズでフルーティ、穏やかな余韻。バスカーブレンデッドを飲んでシングルモルトを試したいファンに向けた自然なステップアップとなる一本。', 'https://www.thebuskerwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- バスカー シングルポットスティル
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バスカー シングルポットスティル', '【色】ゴールドアンバー。【香り】ポットスティル特有のオイリーでスパイシーなアロマ、バニラ、グリーンアップル、麦芽の穀物感が独特の魅力を放つ。【味わい】アイリッシュ固有のスタイル、シングルポットスティルをバスカーブランドで体現した一本。未発芽大麦由来のスパイシーでオイリーな個性が際立ちつつ、バーボン樽のバニラと甘みがバランスを保つ。パワフルながらも飲みやすいアイリッシュポットスティルスタイル。【余韻】スパイシーでオイリー、中程度のほのかに甘い余韻。ポットスティルスタイルへの入門として非常にコストパフォーマンスが高い。', 'https://www.thebuskerwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();

-- バスカー アトランティックウェーブ
INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, updated_at) VALUES
('バスカー アトランティックウェーブ', '【色】明るいゴールド。【香り】アイルランドの大西洋沿岸をイメージした爽やかなシーブリーズのニュアンス、フレッシュなフルーツ、バニラ、軽い塩気のあるミネラル感が広がる個性的なアロマ。【味わい】大西洋に面したアイルランドの海辺の蒸留所に敬意を表したバスカーの特別版。海洋性の微かな塩気とミネラル感がモルトとグレーンの甘みに絡み合い、フルーティさと爽やかさが際立つ独特の海辺スタイル。【余韻】海風のようなクリーンでミネラリーな余韻。アイルランドの大自然と海の魅力を感じさせる個性的かつ飲みやすい一本。', 'https://www.thebuskerwhiskey.com/', '', '', '', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, updated_at = now();
