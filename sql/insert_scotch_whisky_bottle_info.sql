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
