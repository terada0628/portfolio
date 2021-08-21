require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'ユーザー新規登録' do
    before do
      @customer=Customer.new(family_name:"斉藤", first_name:"浩", family_name_kana:"サイトウ", first_name_kana:"ヒロシ", sex:"男性", email:"c@c", postal_code:"8880000", address:"東京都港区", telephone_number:"00088881111", password:"hareruya")
    end
    
  context '登録できるとき' do
  it  '全ての項目が正しく入力されている時' do
      expect(@customer).to be_valid
      end
    end
  end
  
  context '登録できないとき' do
  it 'family_nameが空では登録できない' do
    @customer.family_name=""
    @customer.valid?
    expect(@customer.errors.full_message).to include("氏名(姓)を入力してください")
  end
  
  it 'emailが空では登録できない' do
    @customer.email=""
    @customer.valid?
    expect(@customer.errors.full_message).to include("メールアドレスを入力してください")
  end
    
  end
  

end
