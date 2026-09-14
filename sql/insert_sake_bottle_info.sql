-- ============================================================
-- 日本酒 bottle_info 一括シードデータ
-- 生成日: 2026-09-14
-- 銘柄数: 100銘柄
-- ============================================================

-- ===================== 旭酒造（山口）獺祭シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('獺祭 純米大吟醸 磨き三割九分',
'山口県岩国市旭酒造の看板銘柄。精米歩合39%まで磨き上げたリッチでエレガントな純米大吟醸。フルーティーな吟醸香と上品な甘みが調和し、国内外で圧倒的な支持を集めます。造り手の熱意が一杯に凝縮された現代日本酒の代名詞的存在。

【色】清澄な淡い黄金色
【香り】熟した洋梨・メロン・花のような華やかな吟醸香
【味わい】なめらかで上品な甘さ、旨味と酸味のバランスが絶妙
【余韻】クリーンでスッキリとした余韻が長く続く',
'https://www.asahishuzo.ne.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('獺祭 純米大吟醸 磨き二割三分',
'精米歩合わずか23%まで磨き上げた旭酒造の最高峰。獺祭シリーズの頂点に立つ超高級品。雑味を極限まで排した純粋無垢な味わいは、まるで芸術品のように繊細で気品がある。特別な日の贈答や記念日に相応しい至高の一本。

【色】水のように透き通った淡い色合い
【香り】上品でふくよかな吟醸香、繊細な花と果実のアロマ
【味わい】極めてピュアで雑味がなく、繊細な甘さと複雑な旨味
【余韻】絹のようになめらかで長く続くフィニッシュ',
'https://www.asahishuzo.ne.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 朝日酒造（新潟）久保田シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('久保田 千寿',
'新潟県長岡市朝日酒造が誇る久保田シリーズのスタンダード品。1985年の発売以来、淡麗辛口ブームを牽引してきた伝説的な銘柄。ゴクゴク飲める軽快なキレとすっきりとした旨味は、どんな料理にも寄り添う食中酒の傑作。毎日の晩酌から大切な席まで幅広く活躍します。

【色】透明感のある淡い色
【香り】穏やかでスッキリとした控えめな香り
【味わい】淡麗でキレのある辛口、旨味がありながらすっきり飲める
【余韻】潔いキレが心地よく、後を引かないクリーンな後味',
'https://www.asahi-shuzo.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('久保田 萬寿',
'久保田シリーズの最高峰。吟醸造りの技術を極限まで高めた純米大吟醸で、お祝いや贈答品として高い人気を誇ります。千寿の軽快さとは異なり、ふくよかで奥行きのある複雑な味わいを持ちながらも、新潟らしいスッキリとしたキレが光ります。

【色】やや黄みがかった淡い琥珀色
【香り】上品な吟醸香、熟した果実と米のふくらみ
【味わい】ふくよかでリッチな旨味、甘さと辛さの絶妙なバランス
【余韻】長く続く余韻と品のある後味',
'https://www.asahi-shuzo.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 八海醸造（新潟）八海山シリーズ =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('八海山 純米吟醸',
'新潟県南魚沼市、霊峰八海山の麓に湧く清らかな伏流水で仕込んだ純米吟醸。米の旨味をしっかり引き出しながら、新潟らしい淡麗な飲み口を両立させた銘酒。全国的な知名度を持ちながらも価格が手ごろで、日本酒ビギナーにも親しまれている入門酒の一本。

【色】透明感あふれる淡い色
【香り】穏やかな吟醸香、米の甘い香り
【味わい】バランスの良い旨味と甘さ、後半は淡麗でスッキリ
【余韻】クリーンで気持ちよいキレ',
'https://www.hakkaisan.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 石本酒造（新潟）越乃寒梅 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('越乃寒梅 白ラベル',
'新潟県新潟市の石本酒造が醸す、幻の酒と呼ばれた時代の面影を残す銘酒。昭和の高度成長期に一世を風靡し、全国の日本酒ファンを魅了した歴史を持つ。辛口でありながらも柔らかさと旨味を感じる独自のスタイルは今も健在で、飲み飽きない食中酒として根強い人気を誇る。

【色】澄んだ無色透明
【香り】控えめでクリーンな香り
【味わい】辛口ながら柔らかな旨味、スルスルと飲める軽快さ
【余韻】すっきりとしたキレのある後味',
'https://koshinokanbai.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 白瀧酒造（新潟）上善如水 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('上善如水 純米吟醸',
'新潟県南魚沼市の白瀧酒造が醸す、「水のように善い」をコンセプトにした純米吟醸。日本酒が苦手な人にも飲みやすい極めて軽やかでクリーンな味わいが特徴。老子の言葉「上善若水」に由来するブランド名の通り、すべての人に受け入れられる懐の深さを持つ。

【色】水のように透明に近い淡い色
【香り】ほのかに甘い米の香り、フレッシュでクリーン
【味わい】口当たり柔らかで極めてスムース、甘みと酸味が軽やかに広がる
【余韻】後味はスッキリと消え、爽快感が残る',
'https://www.jozen.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 剣菱酒造（兵庫）=====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('剣菱',
'創業500年以上を誇る兵庫県神戸市の剣菱酒造が醸す歴史的銘酒。変わらぬ味を守り続けることを信念とし、山廃仕込みによる骨太でしっかりとした旨味と酸味が特徴。燗酒で本領を発揮し、熱めの燗にするとその魅力が倍増する。食中酒として和食との相性が抜群。

【色】やや黄みを帯びた琥珀色
【香り】米由来のしっかりとした香り、乳酸や熟成感
【味わい】力強い旨味と豊かな酸味、コクのある濃醇な飲み口
【余韻】じっくりと続く深みのある余韻',
'https://www.kenbishi.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 黒龍酒造（福井）=====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('黒龍 純吟',
'福井県永平寺町の黒龍酒造が醸す福井を代表する銘酒。日本初の吟醸酒専業蔵として名を馳せ、吟醸造りの技術を磨き続けてきた。黒龍といえば「九頭龍」の兄弟ブランドとして有名で、品質の高さから希少価値も高い。淡麗の中にしっかりとした旨味と品格を感じる。

【色】透明感のある淡い色
【香り】繊細で上品な吟醸香、穏やかな果実のニュアンス
【味わい】上品な旨味とキレのバランスが絶妙
【余韻】クリーンで爽快な後味',
'https://www.kokuryu.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 磯自慢酒造（静岡）=====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('磯自慢 純米大吟醸',
'静岡県焼津市の磯自慢酒造が醸す、洞爺湖サミットで提供されたことでも知られる全国屈指の名酒。静岡酵母と南アルプスの伏流水を駆使した繊細でエレガントな味わいは、日本酒通をうならせる格別の品。口に含んだ瞬間に広がる吟醸香と旨味の融合が絶品。

【色】澄み渡る淡い色
【香り】豊かでエレガントな吟醸香、洋梨やメロンを思わせる芳香
【味わい】柔らかでシルキーな旨味、甘みと酸味が上品に調和
【余韻】余韻が長く、上品な甘さがじっくり続く',
'https://www.isojiman-sake.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 而今（三重）木屋正酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('而今 純米吟醸 おりがらみ',
'三重県名張市の木屋正酒造が醸す、プレミアム日本酒の代表格。「而今」とは「今この瞬間を生きる」という禅の言葉に由来。フルーティーでジューシー、華やかさと旨味が高次元で融合した味わいは一度飲んだら忘れられないインパクト。入手困難な幻の酒として知られる。

【色】やや濁りを帯びた白濁色（おりがらみ）
【香り】フレッシュで爆発的な果実香、メロン・マスカット
【味わい】ジューシーな甘みと旨味、適度な酸がキレをもたらす
【余韻】余韻が長く、果実感が口の中に残る',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 飛露喜（福島）廣木酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('飛露喜 特別純米',
'福島県河沼郡の廣木酒造が醸す、東北を代表する銘酒。蔵元の廣木健司氏が若くして蔵を継ぎ、醸造を一から学び直して生み出した渾身の作。フレッシュでみずみずしい旨味と甘みのバランスが絶妙で、全国の日本酒ファンを熱狂させた。

【色】透明感のある淡い色
【香り】フレッシュな果実香、爽やかな米の香り
【味わい】みずみずしい旨味と甘み、キレのある後半
【余韻】スッキリとして飲み飽きない後味',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 十四代（山形）高木酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('十四代 本丸 秘伝玉返し',
'山形県村山市の高木酒造が醸す、日本酒界で最も入手困難と言われる伝説的銘柄。「日本酒の革命児」とも称される高木辰五郎氏が現代日本酒の方向性を変えた記念碑的存在。フルーティーで甘みがあり、旨味が凝縮されたリッチな味わいは唯一無二。定価での購入が難しいほどの人気を誇る。

【色】やや黄みがかった淡い色
【香り】ゴージャスな果実香、メロン・マンゴー・白桃
【味わい】とろりとした甘み、豊潤な旨味、絶妙な酸のバランス
【余韻】長く優雅な余韻、果実の甘さが続く',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 鍋島（佐賀）富久千代酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('鍋島 特別純米',
'佐賀県鹿島市の富久千代酒造が醸す九州を代表する銘酒。2011年のインターナショナル・サケ・チャレンジで最高賞を受賞し、一躍全国的な名声を得た。九州らしい豊かで華やかな味わいと、スッキリとしたキレが絶妙に調和した現代的な純米酒。

【色】透明感のある淡い色
【香り】華やかでフルーティーな香り、白桃や洋梨のニュアンス
【味わい】豊かな旨味と上品な甘さ、後半のキレが爽快
【余韻】バランスの良い後味で飲み飽きない',
'https://www.nabeshima.cc/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 新政酒造（秋田）=====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('新政 No.6',
'秋田県秋田市の新政酒造が醸す、日本最古の清酒酵母「きょうかい6号」の発祥蔵。蔵元の佐藤祐輔氏が主導する純米・生酛・木桶仕込みへの回帰が業界の注目を集める。クラシカルな製法から生まれる複雑でナチュラルな味わいは、ワインに例えられるほど個性的。

【色】やや濁りのある自然な色
【香り】乳酸を感じるヨーグルトや柑橘のニュアンス
【味わい】豊かな酸味と旨味、複雑な発酵感がある個性派
【余韻】じっくり続く複雑な余韻、食欲をそそる酸',
'https://www.aramasa.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 田酒（青森）西田酒造店 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('田酒 純米吟醸',
'青森県青森市の西田酒造店が醸す、名前の通り「田んぼの酒」＝純米の酒を追求した銘酒。糖類・酸味料などの添加物を一切使わず、米と水と麹だけで醸す潔いスタンダードを半世紀以上貫いてきた。東北らしい豊かな旨味と米の甘さが感じられる、正統派純米酒の傑作。

【色】やや黄みがかった色合い
【香り】穏やかで米の甘みを感じる上品な香り
【味わい】米の旨味がしっかりと広がり、コクと甘さのバランスが良い
【余韻】後味は適度なキレがあり、満足感のある余韻',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 南部美人（岩手）=====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('南部美人 純米吟醸',
'岩手県二戸市の南部美人が醸す、日本でも有数のPR能力を誇る東北の銘酒。蔵元の久慈浩介氏が積極的に国際展開を推進し、海外での日本酒普及に大きく貢献している。岩手県産の美山錦を使った純米吟醸は、フレッシュな香りと柔らかな旨味が特徴。

【色】透明感のある淡い色
【香り】華やかな吟醸香、洋梨やリンゴのフルーティーさ
【味わい】柔らかで丸みのある旨味、適度な甘さと酸
【余韻】スムースで飲みやすい後味',
'https://www.nanbubijin.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 天狗舞（石川）車多酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('天狗舞 山廃純米',
'石川県白山市の車多酒造が醸す、山廃仕込みの旗手として全国に名を轟かせる加賀の銘酒。山廃仕込みによる豊かな乳酸感と深みのある旨味が特徴で、燗酒で真骨頂を発揮する。能登・加賀の食文化に根ざした食中酒として、地元民から全国のファンまで愛されている。

【色】やや濃い色合い、金色を帯びた琥珀
【香り】乳酸やヨーグルトを思わせる複雑な香り、熟成感
【味わい】濃醇で力強い旨味と豊かな酸味、燗にすると旨味が増す
【余韻】じっくりとした深みのある余韻',
'https://www.tengumai.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 勝駒（富山）清都酒造場 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('勝駒 純米',
'富山県高岡市の清都酒造場が醸す、少量生産ゆえに入手困難な北陸の銘酒。蔵の規模は小さいながらも品質への妥協を一切許さない姿勢が生み出す純米酒は、飲む者に深い感動をもたらす。富山の清冽な水と旨味のある地元米が織りなすバランスは唯一無二。

【色】やや黄みがかった淡い色
【香り】穏やかで米の旨みを感じる落ち着いた香り
【味わい】米の旨味が凝縮され、丸みとコクが共存する
【余韻】後味はじっくりとしながらもきれいに収まる',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 満寿泉（富山）桝田酒造店 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('満寿泉 純米大吟醸',
'富山県富山市の桝田酒造店が醸す、古酒や熟成酒でも有名な富山の名門蔵。フレッシュな純米大吟醸からじっくり熟成した古酒まで幅広いラインナップを揃える。富山湾の新鮮な魚介に合わせて飲む満寿泉は格別で、地元の人々に愛される宝的存在。

【色】透明感のある淡い黄金色
【香り】上品な吟醸香と米の甘い香り
【味わい】バランスの良い旨味と甘さ、スッキリとしたキレ
【余韻】クリーンで余韻が長く続く',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 浦霞（宮城）佐浦 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('浦霞 純米',
'宮城県塩竈市の佐浦が醸す、宮城を代表する老舗の銘酒。松島湾を望む蔵で、宮城の豊かな食材、特に新鮮な海の幸との相性を追求した酒造りを続ける。程よい旨味とキレのある飲み口は、仙台の牛タンや宮城の海鮮とよく合う食中酒の傑作。

【色】透明感のある清澄な色
【香り】控えめで穏やかな米の香り、清潔感のある吟醸香
【味わい】スッキリした辛口の中に米の旨味、食中酒として最適
【余韻】後味はキレよく、次の一口を誘う爽快感',
'https://www.urakasumi.com/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 伯楽星（宮城）新澤醸造店 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('伯楽星 純米吟醸',
'宮城県大崎市の新澤醸造店が醸す「究極の食中酒」を掲げる銘酒。一口飲むと旨さが広がり、食べ物のおいしさを引き立てながらも主張しすぎない絶妙な設計は、まさに食中酒の理想形。日本酒の審査会でも高評価を受け続ける高品質が魅力。

【色】澄んだ淡い色合い
【香り】控えめで品のある吟醸香、邪魔をしない穏やかさ
【味わい】旨味と甘さのバランスが理想的、料理を引き立てる
【余韻】食後感が良く、次の料理が食べたくなるキレ',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 写楽（福島）宮泉銘醸 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('写楽 純米',
'福島県会津若松市の宮泉銘醸が醸す、福島の実力蔵が送り出す渾身の純米酒。会津の豊かな自然と清らかな水から生まれるジューシーで力強い旨味は、飲む者を虜にする。全国新酒鑑評会でも金賞を受賞するなど品質は折り紙付き。会津の食文化を担う誇り高き銘酒。

【色】透明感のある淡い色
【香り】爽やかでフルーティーな香り、米の甘み
【味わい】ジューシーな旨味と適度な甘さ、キレのある後半
【余韻】旨味の余韻が続き、飲み飽きない',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 作（三重）清水清三郎商店 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('作 穂乃智',
'三重県鈴鹿市の清水清三郎商店が醸す、伊勢志摩サミットで世界のVIPに振る舞われた三重の代表銘柄。フルーティーで華やかな香りと洗練された旨味は、日本酒の枠を超えた品格を持つ。サミット採用で一躍世界的知名度を得た現代日本酒の傑作。

【色】透明感のある淡い色
【香り】華やかでフルーティーな吟醸香
【味わい】繊細な旨味と上品な甘さ、エレガントな飲み口
【余韻】クリーンで洗練された後味',
'https://seizaburo.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 醸し人九平次（愛知）萬乗醸造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('醸し人九平次 純米大吟醸 別誂',
'愛知県名古屋市の萬乗醸造が醸す、パリの三ツ星レストランのワインリストに掲載された奇跡の日本酒。ワインの概念を日本酒に持ち込み、テロワールを表現する革新的なアプローチは世界の美食家を驚かせた。日本酒の可能性を大きく広げた先駆者的存在。

【色】やや黄みを帯びた色合い
【香り】複雑で奥深い香り、熟成した果実と米のアロマ
【味わい】深みのある旨味と複雑な酸味、ワインを想起させる力強さ
【余韻】長く続く余韻と複雑な後味',
'https://kuheiji.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 風の森（奈良）油長酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('風の森 Alpha 凜と輝く漆黒',
'奈良県御所市の油長酒造が醸す、ガス感のある新感覚の日本酒ブランド。添加物を一切使わず、搾ったままの状態で瓶詰めするため、微炭酸のフレッシュな飲み口が楽しめる。奈良県産米と大和の水が生み出すナチュラルで個性的な味わいは、新世代の日本酒ファンを獲得している。

【色】微かに濁りを帯びた自然な色
【香り】フレッシュで爽やかな香り、微炭酸由来のシュワシュワ感
【味わい】スパークリングのような軽快さと米の旨味が融合
【余韻】爽快で後味がクリーン',
'https://www.yucho-sake.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== みむろ杉（奈良）今西酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('みむろ杉 純米吟醸 辛口 露葉風',
'奈良県桜井市の今西酒造が醸す、三輪山の麓・日本酒発祥の地から生まれる銘酒。奈良県産の酒造好適米「露葉風」を使い、酒の神様・大物主神を祀る大神神社の御神水で仕込む。歴史と神話の地が育む旨辛口は、和食との相性が抜群。

【色】透明感のある淡い色
【香り】穏やかな吟醸香、米の甘い香りとフルーティーさ
【味わい】旨味がありながら辛口でスッキリ、料理に寄り添う
【余韻】後味はキレよく、食欲をそそる後味',
'https://www.imanishishuzo.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 篠峯（奈良）千代酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('篠峯 純米大吟醸 ろくまる',
'奈良県御所市の千代酒造が醸す、山田錦60%精米の丁寧な純米大吟醸。奈良の伝統的な酒造りを大切にしながら現代の感覚を取り入れた洗練された味わいは、奈良の食文化を体現する。フルーティーで上品な香りと旨味の調和が美しい。

【色】透明感のある澄んだ色
【香り】上品な吟醸香、繊細な果実と花のアロマ
【味わい】しっかりした旨味と甘さが調和、上品な飲み口
【余韻】余韻が長く、品のある後味',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 東洋美人（山口）澄川酒造場 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('東洋美人 純米大吟醸 一番纏',
'山口県萩市の澄川酒造場が醸す、西の銘酒として全国的な人気を誇る。2013年の山口豪雨災害から見事に復活し、多くのファンの支持を受けて立ち上がったストーリーも感動的。果実のような香りとジューシーな旨味が特徴で、飲むと思わず笑顔になる美しい酒。

【色】澄んだ美しい淡い色
【香り】豊かでジューシーな果実香、メロンや桃のニュアンス
【味わい】旨味とジューシーな甘さ、エレガントな飲み口
【余韻】長く続く甘い余韻と爽快なキレ',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 雁木（山口）八百新酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('雁木 純米吟醸 ひとつび',
'山口県岩国市の八百新酒造が醸す、燗酒にも対応する使い勝手の良い純米吟醸。山口県産酒造好適米を使い、丁寧な手造りにこだわった酒は、飲む人を選ばないバランスの良さが魅力。ひとつびという銘は「一升瓶」から来ており、一晩で飲み切れる旨さという意味も込める。

【色】淡い黄みがかった色
【香り】穏やかな果実香と米の旨み香
【味わい】旨味とふくらみがあり燗にすると一層深まる
【余韻】温かみのある後味、燗酒で真骨頂を発揮',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 賀茂金秀（広島）金光酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('賀茂金秀 特別純米 旨辛口',
'広島県東広島市の金光酒造が醸す、近年急速に人気が高まる広島の実力蔵。軟水を使った広島酒らしいなめらかな旨味と、しっかりとしたキレが両立した旨辛口は、様々な料理との相性が良い。コスパの高さも人気の秘密で、日常使いの日本酒として重宝される。

【色】透明感のある淡い色
【香り】穏やかで米の旨みを感じる香り
【味わい】旨味があってスッキリ辛口、料理に合わせやすい
【余韻】キレよくスッキリとした後味',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 福寿（兵庫）神戸酒心館 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('福寿 純米吟醸',
'兵庫県神戸市の神戸酒心館が醸す、ノーベル賞授賞式の晩餐会で毎年提供されている格調高い銘酒。神戸を代表するブランドとして国内外で高い評価を受け、灘五郷の伝統を継承しながらも洗練された現代スタイルを取り入れている。

【色】透明感のある黄金色
【香り】上品で落ち着いた吟醸香、華やかさの中に品格
【味わい】ふくよかで丸みのある旨味、バランスの取れた味わい
【余韻】品格のある余韻、長く続く上品な後味',
'https://www.kobesyushinkan.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 玉乃光（京都）玉乃光酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('玉乃光 純米吟醸 酒魂',
'京都府京都市の玉乃光酒造が醸す、日本初の純米吟醸を世に出した老舗蔵の代表作。純米酒を世に広めた先駆者としての矜持を持ち、米の旨味を最大限に引き出した酒造りを貫く。祇園・先斗町の料理屋でも愛用される京都の品格を持つ銘酒。

【色】やや黄みがかった色合い
【香り】上品な吟醸香、米の甘くやさしい香り
【味わい】米の旨味がしっかり感じられ、甘みとキレが調和
【余韻】余韻があり、飲み応えのある後味',
'https://www.tamanohikari.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 松の司（滋賀）松瀬酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('松の司 純米吟醸',
'滋賀県竜王町の松瀬酒造が醸す、近江を代表する銘酒。琵琶湖の水脈から湧き出る地下水を使い、地元産の酒造好適米「玉栄」を主体に丁寧に醸す。滋賀の豊かな自然が育む旨味ある純米吟醸は、全国の日本酒ファンから高い評価を受けている。

【色】澄んだ淡い色合い
【香り】穏やかで品のある吟醸香、米の優しい甘み
【味わい】きれいな旨味と甘さ、適度な酸がバランスを保つ
【余韻】スムースで飲みやすい後味',
'https://www.matsunosake.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 七本鎗（滋賀）冨田酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('七本鎗 純米',
'滋賀県長浜市の冨田酒造が醸す、戦国時代の賤ヶ岳七本槍にちなんだ勇壮な銘酒。地元・滋賀県産の酒米にこだわり、伝統的な酒造りを守り続けている。辛口でしっかりとした骨格を持ちながら、米の旨味がしっかりと感じられる食中酒として人気が高い。

【色】やや黄みがかった色
【香り】穏やかで米の旨みを感じる香り
【味わい】力強い旨味と辛口のキレ、ボリューム感のある飲み口
【余韻】骨格のある余韻、料理を引き立てる後味',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 仙禽（栃木）せんきん =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('仙禽 オーガニックナチュール',
'栃木県さくら市のせんきんが醸す、ドメーヌ（自社農園）での米作りから一貫生産する革新的な蔵。自然農法で育てた米と蔵の下を流れる湧き水で醸すナチュラルな酒は、他に例を見ない個性を持つ。酸味と甘みのバランスが特徴的で、ワインのような複雑さを日本酒で表現。

【色】微かに濁った自然な色合い
【香り】ナチュラルで複雑な香り、乳酸と果実が混じり合う
【味わい】豊かな酸味と甘み、個性的で記憶に残る味わい
【余韻】複雑で長い余韻、ナチュラルワインに近い感覚',
'https://www.senkin.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 大那（栃木）菊の里酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('大那 純米吟醸 那須五百万石',
'栃木県大田原市の菊の里酒造が醸す、那須の自然が育む銘酒。栃木県産の酒造好適米「五百万石」を使い、那須連山の伏流水で仕込む。フレッシュでジューシーな果実感と米の旨味が調和した現代的な純米吟醸は、日本酒ファンから高い評価を受けている。

【色】透明感のある淡い色
【香り】フレッシュでジューシーな果実香
【味わい】旨味と甘さ、ジューシーな果実感が広がる
【余韻】爽快でスッキリとした後味',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 廣戸川（福島）松崎酒造店 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('廣戸川 純米',
'福島県天栄村の松崎酒造店が醸す、福島の地酒として近年急成長を遂げる銘酒。ふくしまの酒の奥深さを世に知らしめた一本で、フレッシュな旨味とジューシーな甘さが特徴。全国新酒鑑評会での連続金賞受賞など、品質の高さは折り紙付き。

【色】透明感のある淡い色
【香り】フレッシュで爽やかな吟醸香
【味わい】ジューシーな旨味と甘み、スッキリとしたキレ
【余韻】爽快な後味、次の一口が進む',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 天明（福島）曙酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('天明 純米 中取り',
'福島県河沼郡会津坂下町の曙酒造が醸す、「天が明ける」ような晴れやかな飲み口を持つ銘酒。清澄な会津の空気と水が生み出すフレッシュで透明感のある味わいは、白ワインに例えられることもある。現代の日本酒ファンを惹きつける洗練されたスタイル。

【色】透明感のある澄んだ色
【香り】フレッシュでクリーンな香り、爽やかな果実のニュアンス
【味わい】軽やかで透明感のある旨味、白ワインのような爽快感
【余韻】クリーンで後味スッキリ',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== くどき上手（山形）亀の井酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('くどき上手 純米大吟醸 ばくれん',
'山形県鶴岡市の亀の井酒造が醸す、超辛口で有名な山形の個性派銘酒。「くどき上手」というユニークなネーミングと、超辛口にもかかわらず旨味を感じさせる技術力の高さが評判。フルーティーな香りと辛口のキレが絶妙に組み合わさった唯一無二の存在。

【色】透明感のある淡い色
【香り】フルーティーで華やかな吟醸香
【味わい】超辛口ながら旨味もしっかりあり、爽快なキレが特徴
【余韻】潔いキレと後味の爽快感',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 出羽桜（山形）出羽桜酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('出羽桜 桜花吟醸',
'山形県天童市の出羽桜酒造が醸す、吟醸文化を全国に広めた功績を持つ山形の名門蔵。1980年代に地酒の吟醸酒を量販店でも買えるようにした先駆的取り組みで、日本酒ファンの裾野を大きく広げた歴史がある。桜のように華やかで繊細な吟醸香が特徴。

【色】淡い色合い
【香り】桜のように華やかな吟醸香、フルーティーで繊細
【味わい】軽やかで飲みやすい、米の旨味と甘さのバランス
【余韻】スッキリとした後味、飲み飽きない軽快さ',
'https://www.dewazakura.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 楯野川（山形）楯の川酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('楯野川 純米大吟醸 清流',
'山形県酒田市の楯の川酒造が醸す、全量純米大吟醸蔵として名を馳せる山形の注目蔵。精米歩合50%以上の純米大吟醸のみを造るというポリシーを貫き、高品質な酒を安定して供給する実力蔵。庄内平野の豊かな米と最上川の水が育む繊細で華やかな一本。

【色】透明感のある淡い色
【香り】繊細で華やかな吟醸香、フレッシュな果実感
【味わい】精米した純米大吟醸らしい繊細な旨味、クリーンな甘さ
【余韻】長くエレガントな余韻',
'https://tatenokawa.com/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 雪の茅舎（秋田）齋彌酒造店 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('雪の茅舎 純米吟醸',
'秋田県由利本荘市の齋彌酒造店が醸す、雪に埋もれた茅葺き屋根の蔵が印象的な秋田の名門蔵。自然の乳酸菌を使った生酛・山廃系の手法を大切にしながら、現代的な感覚を取り入れた飲みやすい酒造りを展開。秋田の厳しい寒さが醸す深みのある旨味が魅力。

【色】澄んだ淡い色合い
【香り】穏やかな吟醸香、米の甘みとふくらみ
【味わい】米の旨味がしっかりあり、飲み飽きない旨さ
【余韻】程よい余韻と丸みのある後味',
'https://www.saiya-shuzo.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 豊盃（青森）三浦酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('豊盃 純米吟醸 豊盃米',
'青森県弘前市の三浦酒造が醸す、津軽の地で独自の酒造好適米「豊盃米」を栽培する個性派蔵。自ら育てた米で酒を醸すこだわりから生まれる豊かな旨味と甘さは、他の銘柄にない個性を持つ。入手困難な幻の酒としても知られ、地酒ファンの間で高く評価されている。

【色】やや黄みがかった淡い色
【香り】豊かな米の香り、独自の酒米が生み出す個性的な甘み
【味わい】旨味が豊かでコクがあり、甘さと酸のバランスが良い
【余韻】ふくよかな余韻、飲んだ後も米の旨さが続く',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 陸奥八仙（青森）八戸酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('陸奥八仙 特別純米',
'青森県八戸市の八戸酒造が醸す、南部杜氏の伝統と現代の技術を融合させた青森の実力蔵の銘酒。八仙の名は中国の神話「八仙人」から取られ、飲む者を仙境へ誘うという意味が込められている。洋梨のような果実香とふくよかな旨味が特徴。

【色】透明感のある淡い色
【香り】洋梨やリンゴを思わせるフルーティーな吟醸香
【味わい】豊かな旨味と甘さ、果実感のある飲み口
【余韻】余韻が長く、果実の甘さと旨味が続く',
'https://www.mutsu-hassen.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== AKABU（岩手）赤武酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('AKABU 純米吟醸',
'岩手県盛岡市の赤武酒造が醸す、若い蔵元が挑む岩手の新世代ブランド。東日本大震災で蔵が被災しながらも再建を果たし、「岩手の米で岩手の酒を」という想いで醸す渾身の一本。フレッシュでフルーティーな現代スタイルの純米吟醸は若い世代の日本酒ファンを増やしている。

【色】透明感のある淡い色
【香り】フレッシュでフルーティーな香り、若々しい活気
【味わい】ジューシーな旨味と甘み、スッキリとしたキレ
【余韻】爽快な後味、もう一口飲みたくなる軽快さ',
'https://akabu.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 一ノ蔵（宮城）一ノ蔵 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('一ノ蔵 特別純米酒 超辛口',
'宮城県大崎市の一ノ蔵が醸す、東北の風土を体現する宮城を代表する蔵。超辛口でありながら米の旨味をしっかり感じさせる技術力は、長年の蔵人の熟練から生まれる。宮城の豊かな自然と食文化に根ざした酒造りが、全国のファンから支持されている。

【色】透明感のある淡い色
【香り】清潔感のある控えめな香り
【味わい】超辛口だが旨味があり、スッキリとしたキレが際立つ
【余韻】潔いキレと爽快な後味',
'https://www.ichinokura.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 男山（北海道）男山株式会社 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('男山 純米',
'北海道旭川市の男山株式会社が醸す、北海道を代表する老舗銘酒。江戸時代に伊丹の銘酒として名を馳せた「男山」の名を受け継ぐ由緒正しき蔵。北海道の寒冷地という厳しい環境が生み出す、きりっとしたキレと米の旨味が特徴。

【色】澄んだ淡い色合い
【香り】穏やかでクリーンな香り
【味わい】キレがよく爽快、北海道米の旨味がしっかり
【余韻】スッキリとした後味、後を引かないクリーンさ',
'https://www.otokoyama.com/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 国士無双（北海道）高砂酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('国士無双 純米吟醸',
'北海道旭川市の高砂酒造が醸す、将棋の最強の手にちなんだ勇ましい銘酒。大雪山の伏流水と北海道産酒造好適米で醸す純米吟醸は、北の大地の力強さと繊細さを兼ね備えている。旭川の名物スープカレーや北海道の食材との相性も抜群。

【色】透明感のある淡い色
【香り】穏やかで上品な吟醸香
【味わい】力強さと繊細さを兼ね備えたバランス型
【余韻】すっきりとした後味',
'https://www.takasago-brewery.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 手取川（石川）吉田酒造店 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('手取川 純米大吟醸 山廃',
'石川県白山市の吉田酒造店が醸す、白山の伏流水と能登・加賀の米が育む石川の名門蔵。山廃仕込みで醸した深みある旨口の酒は、加賀料理との相性が格別。石川県下の飲食店でも定番として愛される、石川の食文化を体現する銘酒。

【色】やや黄みがかった色
【香り】乳酸や米の香りが複雑に絡む山廃らしい香り
【味わい】豊かな旨味と酸味、燗で一層深まる濃醇な飲み口
【余韻】じっくりとした余韻と深みのある後味',
'https://www.tedorigawa.com/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 遊穂（石川）御祖酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('遊穂 純米',
'石川県羽咋市の御祖酒造が醸す、UFOで有名な能登・羽咋から生まれる個性派銘酒。「遊穂」とは字の通り「穂が遊ぶ」という意味で、のびのびとした酒造りのコンセプトを示す。旨口でありながらもキレのある飲み口は、どんな料理にも合わせやすい。

【色】やや色付いた自然な色合い
【香り】米の旨みを感じる穏やかな香り
【味わい】旨味がありつつも軽快、どんな料理にも寄り添う
【余韻】飲みやすくスッキリとした後味',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 白岳仙（福井）安本酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('白岳仙 純米大吟醸 ESHIKOTO',
'福井県福井市の安本酒造が醸す、越前・若狭の食材との調和を追求した福井の銘酒。越前蟹や越前おろし蕎麦など福井の名物料理との相性を考えた丁寧な酒造りが、地元民だけでなく全国のファンからも支持を集める。

【色】透明感のある淡い色
【香り】上品で繊細な吟醸香
【味わい】きれいな旨味と甘さ、食中酒として最適なバランス
【余韻】スムースで余韻が心地よい',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 蓬莱泉（愛知）関谷醸造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('蓬莱泉 純米大吟醸 空',
'愛知県設楽町の関谷醸造が醸す、山間の蔵から生まれる入手困難な銘酒。「空」「和」「吟」など独自のラインナップで全国の地酒ファンを魅了する。豊川の伏流水と愛知産の酒造好適米が生み出すフルーティーで上品な大吟醸は、熱烈なファンを持つ。

【色】透明感のある色合い
【香り】フルーティーで洗練された大吟醸香
【味わい】上品な甘さと旨味、繊細でエレガントな味わい
【余韻】長く続く優雅な余韻',
'https://www.houraisen.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 義侠（愛知）山忠本家酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('義侠 純米原酒 60%',
'愛知県愛西市の山忠本家酒造が醸す、兵庫県産山田錦を高精白・低温長期発酵で仕込む個性派純米酒。「義」と「侠」の名にふさわしい骨太でしっかりとした米の旨味が特徴。米の力を最大限に引き出した昔ながらの酒造りへのこだわりが貫かれている。

【色】やや黄みがかった色合い
【香り】米の旨みを感じる熟成感のある香り
【味わい】骨太でしっかりした旨味、原酒らしいボリューム感
【余韻】力強い余韻、燗酒でその本領を発揮',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 開運（静岡）土井酒造場 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('開運 純米',
'静岡県掛川市の土井酒造場が醸す、縁起の良い名前で人気の静岡の銘酒。静岡酵母を使い、軽やかでフルーティーなスタイルを確立した静岡を代表する蔵の一つ。秋田杜氏の波瀬正吉氏が磨き上げた技術が今も受け継がれ、品評会でも多数の金賞を受賞する実力蔵。

【色】透明感のある淡い色
【香り】軽やかでフレッシュな吟醸香、果実のニュアンス
【味わい】スッキリとした旨味、軽快でバランスが良い
【余韻】爽快なキレと後味の良さ',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 澤屋まつもと（京都）松本酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('澤屋まつもと 守破離 山田錦',
'京都府京都市の松本酒造が醸す、伏見の老舗蔵が挑む現代的な純米酒。守（伝統）・破（発展）・離（独創）というコンセプトで、伝統の伏見酒造りを大切にしながら革新的な酒造りに挑戦。きれいな旨味と上品な甘さは伏見の水の軟水質を感じさせる。

【色】澄んだ淡い色合い
【香り】繊細で上品な吟醸香、果実と米の香りが調和
【味わい】柔らかでなめらかな旨味、軟水らしいまろやかさ
【余韻】スムースで心地よい後味',
'https://www.matsumoto-sake.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 惣誉（栃木）惣誉酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('惣誉 純米吟醸 辛口',
'栃木県芳賀郡茂木町の惣誉酒造が醸す、栃木を代表する地酒の一つ。那珂川水系の清冽な伏流水と栃木産の酒米で仕込む純米吟醸は、旨味のある辛口として地元民から長く愛されている。食中酒として誰もが飲みやすいオーソドックスなスタイルが魅力。

【色】透明感のある淡い色
【香り】穏やかで爽やかな香り
【味わい】旨口辛口でバランスが良く、飲みやすい
【余韻】スッキリとしたキレ',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 菊姫（石川）菊姫合資会社 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('菊姫 山廃純米',
'石川県白山市の菊姫合資会社が醸す、山廃仕込みの旗手として全国に名声を持つ加賀の名酒。重厚でボリューム感のある旨口は、燗酒にすることで一層その魅力が増す。食べ物との相性が抜群で、能登・加賀の豊かな食材を引き立てる貫禄の一本。

【色】濃いめの琥珀色
【香り】乳酸や熟成感のある複雑な香り、山廃らしさ全開
【味わい】重厚で力強い旨味、燗酒で真価を発揮
【余韻】深みのある長い余韻、力強い後味',
'https://www.kikuhime.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 宗玄（石川）宗玄酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('宗玄 能登純米',
'石川県珠洲市の宗玄酒造が醸す、能登半島の先端に位置する奥能登の銘酒。厳しい自然環境の中で能登杜氏が丁寧に醸す酒は、海の幸との相性が格別。2024年の能登半島地震からの復興を目指す蔵として、多くの支援を受けながら酒造りを続けている。

【色】やや黄みがかった色合い
【香り】穏やかで米の旨みを感じる香り
【味わい】能登の食材に合う旨口、しっかりした旨味
【余韻】温かみのある余韻と深い後味',
'https://www.sougen-sake.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 加賀鳶（石川）福光屋 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('加賀鳶 純米大吟醸 藍',
'石川県金沢市の福光屋が醸す、江戸時代の加賀鳶（火消し）の豪快さを体現する金沢の銘酒。金沢市内では誰もが知る地酒ブランドで、金沢の食文化・飲み文化に深く根ざしている。力強さの中にも上品さを持つ、さすが金沢らしい品格ある味わい。

【色】透明感のある淡い色
【香り】品のある吟醸香、金沢らしい上品さ
【味わい】力強さと繊細さの共存、旨味とキレのバランス
【余韻】金沢の風情を感じる品格ある後味',
'https://www.fukumitsuya.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 竹葉（石川）数馬酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('竹葉 能登純米',
'石川県鳳珠郡能登町の数馬酒造が醸す、能登の素朴さと力強さを体現する銘酒。「竹葉」の名は、日本武尊が能登で竹の葉の盃で酒を飲んだという故事に由来する。能登の海の幸に寄り添う旨口タイプで、地元の漁師飯との相性は格別。

【色】やや色付いた素朴な色合い
【香り】米の旨みを感じる素朴な香り
【味わい】能登らしい旨口、料理と一緒に楽しみたい食中酒
【余韻】素朴で温かみのある後味',
'https://www.chikuha.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 姿（栃木）飯沼銘醸 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('姿 純米吟醸 雄町',
'栃木県佐野市の飯沼銘醸が醸す、近年急速に知名度を上げる栃木の実力蔵。様々な酒米を使って多様なラインナップを展開し、それぞれの米の個性を引き出す丁寧な酒造りが評価されている。フルーティーで飲みやすい現代スタイルの純米吟醸。

【色】透明感のある淡い色
【香り】フルーティーで華やかな香り
【味わい】旨味と甘さのバランスが良く、飲みやすいスタイル
【余韻】スッキリとした後味と適度な余韻',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 流輝（群馬）松屋酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('流輝 純米吟醸 桃色にごり',
'群馬県藤岡市の松屋酒造が醸す、近年急増している群馬の注目銘柄。フレッシュでジューシーなにごり酒スタイルで若い世代を中心に人気急上昇。桃色の美しい外観と甘酸っぱいフルーティーな味わいは、日本酒初心者も楽しめる親しみやすさがある。

【色】桃色を帯びた美しいにごり
【香り】フレッシュで甘い果実香、苺や桃のニュアンス
【味わい】甘酸っぱいフルーティーさ、スパークリング感のある軽快さ
【余韻】後味スッキリ、甘い余韻が続く',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 東一（佐賀）五町田酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('東一 純米吟醸',
'佐賀県嬉野市の五町田酒造が醸す、九州の名蔵が誇る肥前の地酒。純米にこだわり、米の旨味を大切にした丁寧な酒造りが全国のファンから支持を集める。佐賀の豊かな食材との相性を考えた食中酒スタイルは、九州の食文化によく馴染む。

【色】透明感のある淡い色
【香り】穏やかな吟醸香、米の甘みを感じる上品さ
【味わい】旨味があってバランスが良い、食中酒として最適
【余韻】スッキリとした後味',
'', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 菊正宗（兵庫）菊正宗酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('菊正宗 嘉宝蔵 生酛純米大吟醸',
'兵庫県神戸市の菊正宗酒造が醸す、灘五郷を代表する老舗大手が誇る生酛造りの最高峰。江戸時代から続く生酛仕込みの伝統を守り、現代の技術と融合させた渾身の純米大吟醸。大手蔵のスケールを活かした安定した品質と、生酛由来の深みある旨味が魅力。

【色】やや黄みがかった色合い
【香り】複雑で豊かな香り、生酛由来の乳酸感と吟醸香
【味わい】豊かな旨味と酸味、深みのある飲み口
【余韻】複雑で長い余韻',
'https://www.kikumasamune.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 白鶴（兵庫）白鶴酒造 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('白鶴 大吟醸 超特撰',
'兵庫県神戸市の白鶴酒造が醸す、灘の大手蔵が誇る最高峰の大吟醸。全国的知名度を誇るブランドの頂点として位置づけられ、贈答品としても人気が高い。灘の男酒らしいきっぱりとしたキレの中に、大吟醸ならではの華やかな吟醸香が際立つ。

【色】透明感のある淡い黄金色
【香り】華やかな吟醸香、フルーティーな上品さ
【味わい】灘らしいキレとコクのバランス
【余韻】スッキリとしたキレと品格のある後味',
'https://www.hakutsuru.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 月桂冠（京都）月桂冠株式会社 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('月桂冠 大吟醸',
'京都府京都市の月桂冠株式会社が醸す、伏見を代表する歴史ある大手蔵の大吟醸。1637年創業という長い歴史を持ち、日本酒の近代化に多大な貢献をした蔵。伏見の豊かな地下水（名水百選・御香水）を使った柔らかでまろやかな口当たりが特徴。

【色】透明感のある淡い色
【香り】上品な吟醸香、フルーティーで穏やか
【味わい】伏見の軟水らしいまろやかさ、きれいな旨味
【余韻】柔らかな後味、飲み飽きない軽快さ',
'https://www.gekkeikan.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ===================== 大関（兵庫）大関株式会社 =====================

INSERT INTO bottle_info (name, summary, official_url, amazon_url, rakuten_url, hero_image_url, drink_type, updated_at) VALUES
('大関 純米大吟醸',
'兵庫県西宮市の大関株式会社が醸す、西宮の名水「宮水」を使い続ける灘五郷の伝統蔵。広く全国に愛されるブランドでありながら、最高品質の純米大吟醸では職人の技術が光る。灘の男酒の力強さと大吟醸の繊細さを兼ね備えた贈答にも最適な一本。

【色】透明感のある淡い色
【香り】華やかな吟醸香、果実のような甘い香り
【味わい】力強さと繊細さのバランス、旨味としっかりしたキレ
【余韻】品格のある後味',
'https://www.ozeki.co.jp/', '', '', '', 'sake', now())
ON CONFLICT (name) DO UPDATE SET summary = EXCLUDED.summary, official_url = EXCLUDED.official_url, drink_type = EXCLUDED.drink_type, updated_at = now();

-- ============================================================
-- bottle_master への name/drink_type 登録（bottle_info と紐付け用）
-- ============================================================

INSERT INTO bottle_master (name, drink_type) VALUES
  ('獺祭 純米大吟醸 磨き三割九分', 'sake'),
  ('獺祭 純米大吟醸 磨き二割三分', 'sake'),
  ('久保田 千寿', 'sake'),
  ('久保田 萬寿', 'sake'),
  ('八海山 純米吟醸', 'sake'),
  ('越乃寒梅 白ラベル', 'sake'),
  ('上善如水 純米吟醸', 'sake'),
  ('剣菱', 'sake'),
  ('黒龍 純吟', 'sake'),
  ('磯自慢 純米大吟醸', 'sake'),
  ('而今 純米吟醸 おりがらみ', 'sake'),
  ('飛露喜 特別純米', 'sake'),
  ('十四代 本丸 秘伝玉返し', 'sake'),
  ('鍋島 特別純米', 'sake'),
  ('新政 No.6', 'sake'),
  ('田酒 純米吟醸', 'sake'),
  ('南部美人 純米吟醸', 'sake'),
  ('天狗舞 山廃純米', 'sake'),
  ('勝駒 純米', 'sake'),
  ('満寿泉 純米大吟醸', 'sake'),
  ('浦霞 純米', 'sake'),
  ('伯楽星 純米吟醸', 'sake'),
  ('写楽 純米', 'sake'),
  ('作 穂乃智', 'sake'),
  ('醸し人九平次 純米大吟醸 別誂', 'sake'),
  ('風の森 Alpha 凜と輝く漆黒', 'sake'),
  ('みむろ杉 純米吟醸 辛口 露葉風', 'sake'),
  ('篠峯 純米大吟醸 ろくまる', 'sake'),
  ('東洋美人 純米大吟醸 一番纏', 'sake'),
  ('雁木 純米吟醸 ひとつび', 'sake'),
  ('賀茂金秀 特別純米 旨辛口', 'sake'),
  ('福寿 純米吟醸', 'sake'),
  ('玉乃光 純米吟醸 酒魂', 'sake'),
  ('松の司 純米吟醸', 'sake'),
  ('七本鎗 純米', 'sake'),
  ('仙禽 オーガニックナチュール', 'sake'),
  ('大那 純米吟醸 那須五百万石', 'sake'),
  ('廣戸川 純米', 'sake'),
  ('天明 純米 中取り', 'sake'),
  ('くどき上手 純米大吟醸 ばくれん', 'sake'),
  ('出羽桜 桜花吟醸', 'sake'),
  ('楯野川 純米大吟醸 清流', 'sake'),
  ('雪の茅舎 純米吟醸', 'sake'),
  ('豊盃 純米吟醸 豊盃米', 'sake'),
  ('陸奥八仙 特別純米', 'sake'),
  ('AKABU 純米吟醸', 'sake'),
  ('一ノ蔵 特別純米酒 超辛口', 'sake'),
  ('男山 純米', 'sake'),
  ('国士無双 純米吟醸', 'sake'),
  ('手取川 純米大吟醸 山廃', 'sake'),
  ('遊穂 純米', 'sake'),
  ('白岳仙 純米大吟醸 ESHIKOTO', 'sake'),
  ('蓬莱泉 純米大吟醸 空', 'sake'),
  ('義侠 純米原酒 60%', 'sake'),
  ('開運 純米', 'sake'),
  ('澤屋まつもと 守破離 山田錦', 'sake'),
  ('惣誉 純米吟醸 辛口', 'sake'),
  ('菊姫 山廃純米', 'sake'),
  ('宗玄 能登純米', 'sake'),
  ('加賀鳶 純米大吟醸 藍', 'sake'),
  ('竹葉 能登純米', 'sake'),
  ('姿 純米吟醸 雄町', 'sake'),
  ('流輝 純米吟醸 桃色にごり', 'sake'),
  ('東一 純米吟醸', 'sake'),
  ('菊正宗 嘉宝蔵 生酛純米大吟醸', 'sake'),
  ('白鶴 大吟醸 超特撰', 'sake'),
  ('月桂冠 大吟醸', 'sake'),
  ('大関 純米大吟醸', 'sake')
ON CONFLICT (name) DO NOTHING;
