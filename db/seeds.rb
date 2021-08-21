# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'hareruya', password_confirmation: 'hareruya')

# パスワードはencryted_passwordではなくpasswordで登録した後、格納される
Customer.create!(
  family_name: '山田',
  first_name: '和夫',
  family_name_kana: 'ヤマダ',
  first_name_kana: 'カズオ',
  email: 'w@w',
  password: 'hareruya',
  postal_code: '8886666',
  address: '東京都世田谷区',
  telephone_number: '88800002222',
  sex: '男性'
  )

Customer.create!(
  family_name: '田中',
  first_name: '弘行',
  family_name_kana: 'タナカ',
  first_name_kana: 'ヒロユキ',
  email: 'e@e',
  password: 'hareruya',
  postal_code: '8887777',
  address: '東京都上野区',
  telephone_number: '88800001111',
  sex: '男性'
  )

Customer.create!(
  family_name: '中川',
  first_name: '岬',
  family_name_kana: 'ナカガワ',
  first_name_kana: 'ミサキ',
  email: 'r@r',
  password: 'hareruya',
  postal_code: '8888888',
  address: '東京都港区',
  telephone_number: '88800003333',
  sex: '女性'
  )


Genre.create(name: '焼き鳥')
Genre.create(name: 'サラダ')
Genre.create(name: '揚げ物')
Genre.create(name: 'おつまみ')
Genre.create(name: '逸品')
Genre.create(name: 'アルコール')

Item.create(genre_id:1, name: '焼き鳥盛り合わせ(1人前)', introduction: '人気焼き鳥を集めました', price: 800, image: File.open('./app/assets/images/items/yakitori-moriawase.jpg'))
Item.create(genre_id:1, name: 'ねぎま', introduction: 'ねぎま', price: 200, image: File.open('./app/assets/images/items/negima.jpg'))
Item.create(genre_id:1, name: 'もも', introduction: 'もも', price: 200, image: File.open('./app/assets/images/items/momo.jpg'))
Item.create(genre_id:1, name: 'とり皮', introduction: 'とり皮', price: 200, image: File.open('./app/assets/images/items/kawa.jpg'))
Item.create(genre_id:1, name: '砂肝', introduction: '砂肝', price: 200, image: File.open('./app/assets/images/items/sunagimo.jpg'))
Item.create(genre_id:1, name: 'レバー', introduction: 'レバー', price: 200, image: File.open('./app/assets/images/items/rebar.jpg'))
Item.create(genre_id:1, name: 'つくね', introduction: 'つくね', price: 200, image: File.open('./app/assets/images/items/tsukune.jpg'))
Item.create(genre_id:1, name: 'ベーコンアスパラ', introduction: 'ベーコンアスパラ', price: 200, image: File.open('./app/assets/images/items/asupara.jpg'))
Item.create(genre_id:2, name: 'シーザーサラダ', introduction: '新鮮な野菜を特製シーザードレッシングで味付けしました', price: 500, image: File.open('./app/assets/images/items/sizasarada.jpg'))
Item.create(genre_id:2, name: 'チョレギサラダ', introduction: 'チョレギサラダ', price: 400, image: File.open('./app/assets/images/items/tyoregi.jpg'))
Item.create(genre_id:2, name: 'ポテトサラダ', introduction: 'ポテトサラダ', price: 400, image: File.open('./app/assets/images/items/potatosarada.jpg'))
Item.create(genre_id:2, name: 'エビマヨサラダ', introduction: 'エビマヨサラダ', price: 500, image: File.open('./app/assets/images/items/ebimayo.jpg'))
Item.create(genre_id:2, name: 'アボカドサラダ', introduction: 'アボカドサラダ', price: 500, image: File.open('./app/assets/images/items/abokadosarada.jpg'))
Item.create(genre_id:2, name: 'コールスロー', introduction: 'コールスロー', price: 400, image: File.open('./app/assets/images/items/ko-ruslow.jpg'))
Item.create(genre_id:3, name: '唐揚げ', introduction: '厳選した若鶏を使用', price: 300, image: File.open('./app/assets/images/items/karage.jpg'))
Item.create(genre_id:3, name: 'なんこつの唐揚げ', introduction: '食べ出したらくせになる食感', price: 300, image: File.open('./app/assets/images/items/nankotsu.jpg'))
Item.create(genre_id:3, name: 'フライドポテト', introduction: '子供から大人まで楽しめる人気メニュー', price:300 , image: File.open('./app/assets/images/items/potato.jpg'))
Item.create(genre_id:3, name: 'チキン南蛮', introduction: '甘酸っぱいタルタルでお酒が進みます', price: 400, image: File.open('./app/assets/images/items/chicken_nanban.jpg'))
Item.create(genre_id:3, name: '揚げ餃子', introduction: '具材たっぷりの間違いない一品', price: 400, image: File.open('./app/assets/images/items/agegyouza.jpg'))
Item.create(genre_id:3, name: 'カキフライ', introduction: 'カキの旨みを衣に閉じ込めました', price: 400, image: File.open('./app/assets/images/items/kakihurai.jpg'))
Item.create(genre_id:3, name: '手羽先', introduction: '甘辛い味付けと柔らかいお肉がベストマッチ', price: 400, image: File.open('./app/assets/images/items/tebasaki.jpg'))
Item.create(genre_id:4, name: '枝豆', introduction: 'お酒のお供', price: 300, image: File.open('./app/assets/images/items/edamame.jpg'))
Item.create(genre_id:4, name: 'たこわさ', introduction: 'コリコリ食感とわさびのつんとした味がやめられない', price: 300, image: File.open('./app/assets/images/items/takowasa.jpg'))
Item.create(genre_id:4, name: 'エイヒレ', introduction: 'コラーゲンたっぷりで隠れた美容食', price: 300, image: File.open('./app/assets/images/items/eihire.jpg'))
Item.create(genre_id:4, name: '味玉', introduction: 'じっくりダシを漬け込んだ煮卵', price: 200, image: File.open('./app/assets/images/items/azitama.jpg'))
Item.create(genre_id:4, name: 'キムチ', introduction: 'お店で全て漬け込んでます', price: 200, image: File.open('./app/assets/images/items/kimuti.jpg'))
Item.create(genre_id:4, name: '塩キャベツ', introduction: 'シンプルイズベスト', price: 200, image: File.open('./app/assets/images/items/siokyabetsu.jpg'))
Item.create(genre_id:5, name: 'ほっけの塩焼き', introduction: 'ふっくらした白身が絶品', price: 400, image: File.open('./app/assets/images/items/hokke.jpg'))
Item.create(genre_id:5, name: 'ししゃも', introduction: '子持ちのししゃも', price: 300, image: File.open('./app/assets/images/items/sisyamo.jpg'))
Item.create(genre_id:5, name: 'だし巻き玉子', introduction: '味に自信あり', price: 300, image: File.open('./app/assets/images/items/dashimakitamago.jpg'))
Item.create(genre_id:5, name: 'たこ焼き', introduction: '大粒のタコとソースが決めて', price: 400, image: File.open('./app/assets/images/items/takoyaki.jpg'))
Item.create(genre_id:5, name: '焼きおにぎり', introduction: '秘伝のタレをつけじっくり焼き上げました', price: 200, image: File.open('./app/assets/images/items/yakionigiri.jpg'))
Item.create(genre_id:5, name: 'マルゲリータ', introduction: 'トマトソースとモッツァレラチーズが効いてます', price: 800, image: File.open('./app/assets/images/items/pizza-marg.jpg'))
Item.create(genre_id:5, name: 'クワトロフォロマージュ', introduction: 'チーズ好きにはたまらない一品', price: 800, image: File.open('./app/assets/images/items/pizza-quattro.jpg'))
Item.create(genre_id:6, name: 'ビール 350ml(1本)', introduction: 'アサ○の350mlのビール', price: 200, image: File.open('./app/assets/images/items/beer.jpg'))
Item.create(genre_id:6, name: 'ビール 500ml(1本)', introduction: 'アサ○の500mlのビール', price: 300, image: File.open('./app/assets/images/items/beer.jpg'))
Item.create(genre_id:6, name: '芋焼酎(1升)', introduction: '有名芋焼酎', price: 2000, image: File.open('./app/assets/images/items/imosyotyu.jpg'))
Item.create(genre_id:6, name: '麦焼酎(1升)', introduction: '有名麦焼酎', price: 2000, image: File.open('./app/assets/images/items/mugisyotyu.jpg'))
Item.create(genre_id:6, name: '日本酒(1升)', introduction: '有名日本酒', price: 2000, image: File.open('./app/assets/images/items/nihonsyu.jpg'))
Item.create(genre_id:6, name: '赤ワイン', introduction: '有名赤ワイン', price: 2000, image: File.open('./app/assets/images/items/redwine.jpg'))
Item.create(genre_id:6, name: '白ワイン', introduction: '有名白ワイン', price: 2000, image: File.open('./app/assets/images/items/whitewine.jpg'))



