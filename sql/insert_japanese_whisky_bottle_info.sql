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
