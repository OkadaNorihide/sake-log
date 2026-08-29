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
