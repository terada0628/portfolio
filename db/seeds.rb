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
Genre.create(name: 'ご飯もの')
Genre.create(name: '逸品')
Genre.create(name: 'アルコール')