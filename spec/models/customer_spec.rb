require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'ユーザー登録' do
    it '情報が存在すれば登録できること' do
      customer = build(:customer)
      expect(customer).to be_valid
    end
  end

  describe '登録できないとき' do
    before do
      @customer = build(:customer)
    end

    it '氏名(姓)が空欄では登録できない' do
      @customer.family_name = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('氏名(姓)を入力してください')
    end

    it '氏名(名)が空欄では登録できない' do
      @customer.first_name = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('氏名(名)を入力してください')
    end

    it '姓(カナ)が空欄では登録できない' do
      @customer.family_name_kana = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('姓(カナ)を入力してください')
    end

    it '名(カナ)が空欄では登録できない' do
      @customer.first_name_kana = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('名(カナ)を入力してください')
    end

    it 'メールアドレスが空欄では登録できない' do
      @customer.email = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('メールアドレスを入力してください')
    end

    it '同じメールアドレスでは登録できない' do
      @customer.save
      another_customer = FactoryBot.build(:customer)
      another_customer.email = @customer.email
      another_customer.valid?
      expect(another_customer.errors.full_messages).to include('メールアドレスはすでに存在します')
    end

    it '郵便番号が空欄では登録できない' do
      @customer.postal_code = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('郵便番号を入力してください')
    end

    it '郵便番号が数字以外では登録できない' do
      @customer.postal_code = '郵便番号を忘れました'
      @customer.valid?
      expect(@customer.errors.full_messages).to include('郵便番号は数値で入力してください')
    end

    it '郵便番号が7桁以外では登録できない' do
      @customer.postal_code = '666666'
      @customer.valid?
      expect(@customer.errors.full_messages).to include('郵便番号は7文字で入力してください')
    end

    it '住所が空欄では登録できない' do
      @customer.address = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('住所を入力してください')
    end

    it '電話番号が空欄では登録できない' do
      @customer.telephone_number = ''
      @customer.valid?
      expect(@customer.errors.full_messages).to include('電話番号を入力してください')
    end

    it '電話番号は数字以外で登録できない' do
      @customer.telephone_number = '電話番号を忘れました'
      @customer.valid?
      expect(@customer.errors.full_messages).to include('電話番号は数値で入力してください')
    end
  end
end
