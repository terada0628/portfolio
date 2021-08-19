# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

# パスワードはencryted_passwordではなくpasswordで登録した後、格納される
Customer.create!(
  family_name: '山田',
  first_name: '和夫',
  family_name_kana: 'ヤマダ',
  first_name_kana: 'カズオ',
  email: 'w@w',
  password: 'destiny',
  postal_code: '8886666',
  address: '東京都世田谷区',
  telephone_number: '88800002222',
  sex: '男性'
  )

Genre.create(name: '焼き鳥')
Genre.create(name: 'サラダ')
Genre.create(name: '揚げ物')
Genre.create(name: 'おつまみ')
Genre.create(name: '逸品')
Genre.create(name: 'アルコール')

Item.create(genre_id:1, name: '焼き鳥盛り合わせ(1人前)', introduction: '人気焼き鳥を集めました', price: 800, image: File.open('./app/assets/images/items/yakitori-moriawase.jpg'))
Item.create(genre_id:2, name: 'シーザーサラダ', introduction: '新鮮な野菜を特製シーザードレッシングで味付けしました', price: 500, image: File.open('./app/assets/images/items/sizasarada.jpg'))
Item.create(genre_id:3, name: '唐揚げ', introduction: '厳選した若鶏を使用', price: 300, image: File.open('./app/assets/images/items/karage.jpg'))
Item.create(genre_id:3, name: 'なんこつの唐揚げ', introduction: '食べ出したらくせになる食感', price: 300, image: File.open('./app/assets/images/items/nankotsu.jpg'))
Item.create(genre_id:3, name: 'フライドポテト', introduction: '子供から大人まで楽しめる人気メニュー', price:300 , image: File.open('./app/assets/images/items/potato.jpg'))
Item.create(genre_id:3, name: 'チキン南蛮', introduction: '甘酸っぱいタルタルでお酒が進みます', price: 400, image: File.open('./app/assets/images/items/chicken_nanban.jpg'))
Item.create(genre_id:3, name: '揚げ餃子', introduction: '具材たっぷりの間違いない一品', price: 400, image: File.open('./app/assets/images/items/agegyouza.jpg'))
Item.create(genre_id:3, name: 'カキフライ', introduction: 'カキの旨みを衣に閉じ込めました', price: 400, image: File.open('./app/assets/images/items/kakihurai.jpg'))
Item.create(genre_id:3, name: '手羽先', introduction: '甘辛い味付けと柔らかいお肉がベストマッチ', price: 400, image: File.open('./app/assets/images/items/tebasaki.jpg'))
Item.create(genre_id:4, name: '枝豆', introduction: 'お酒のお供', price: 300, image: File.open('./app/assets/images/items/edamame.jpg'))
Item.create(genre_id:4, name: 'たこわさ', introduction: 'コリコリ食感とわさびのつんとした味がやめられない', price: 300, image: File.open('./app/assets/images/items/takowasa.jpg'))
Item.create(genre_id:5, name: 'ほっけの塩焼き', introduction: 'ふっくらした白身が絶品', price: 400, image: File.open('./app/assets/images/items/hokke.jpg'))
Item.create(genre_id:5, name: 'だし巻き玉子', introduction: '味に自信あり', price: 300, image: File.open('./app/assets/images/items/dashimakitamago.jpg'))
Item.create(genre_id:5, name: 'たこ焼き', introduction: '大粒のタコとソースが決めて', price: 400, image: File.open('./app/assets/images/items/takoyaki.jpg'))
Item.create(genre_id:5, name: '焼きおにぎり', introduction: '秘伝のタレをつけじっくり焼き上げました', price: 200, image: File.open('./app/assets/images/items/yakionigiri.jpg'))
Item.create(genre_id:6, name: 'ビール 350ml(1本)', introduction: 'アサ○の350mlのビール', price: 200, image: File.open('./app/assets/images/items/beer350ml.jpg'))
Item.create(genre_id:6, name: 'ビール 500ml(1本)', introduction: 'アサ○の500mlのビール', price: 300, image: File.open('./app/assets/images/items/beer500ml.jpg'))
Item.create(genre_id:6, name: '芋焼酎(1升)', introduction: '有名芋焼酎', price: 2000, image: File.open('./app/assets/images/items/imosyotyu.jpg'))
Item.create(genre_id:6, name: '麦焼酎(1升)', introduction: '有名麦焼酎', price: 2000, image: File.open('./app/assets/images/items/mugisyotyu.jpg'))
Item.create(genre_id:6, name: '日本酒(1升)', introduction: '有名日本酒', price: 2000, image: File.open('./app/assets/images/items/nihonsyu.jpg'))



