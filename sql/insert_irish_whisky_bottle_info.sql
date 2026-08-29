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
