require 'rails_helper'

RSpec.describe Contact, type: :model do
  describe 'お問い合わせ送信' do
    it '情報が存在すれば送信できること' do
      contact = build(:contact)
      expect(contact).to be_valid
    end
  end

  describe '送信できないとき' do
    before do
      @contact = build(:contact)
    end

    it '氏名(姓)が空欄では登録できない' do
      @contact.family_name = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("氏名(姓)を入力してください")
    end

    it '氏名(名)が空欄では登録できない' do
      @contact.first_name = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("氏名(名)を入力してください")
    end

    it '姓(カナ)が空欄では登録できない' do
      @contact.family_name_kana = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("姓(カナ)を入力してください")
    end

    it '名(カナ)が空欄では登録できない' do
      @contact.first_name_kana = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("名(カナ)を入力してください")
    end

    it 'メールアドレスが空欄では登録できない' do
      @contact.email = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("メールアドレスを入力してください")
    end
    
    it '郵便番号が空欄では登録できない' do
      @contact.postal_code = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("郵便番号を入力してください")
    end

    it '郵便番号が数字以外では登録できない' do
      @contact.postal_code = "いいいいいいい"
      @contact.valid?
      expect(@contact.errors.full_messages).to include("郵便番号は数値で入力してください")
    end

    it '郵便番号が7桁以外では登録できない' do
      @contact.postal_code = "666666"
      @contact.valid?
      expect(@contact.errors.full_messages).to include("郵便番号は7文字で入力してください")
    end

    it '住所が空欄では登録できない' do
      @contact.address = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("住所を入力してください")
    end

    it '電話番号が空欄では登録できない' do
      @contact.telephone_number = ""
      @contact.valid?
      expect(@contact.errors.full_messages).to include("電話番号を入力してください")
    end

    it '電話番号は数字以外で登録できない' do
      @contact.telephone_number = "あああああ"
      @contact.valid?
      expect(@contact.errors.full_messages).to include("電話番号は数値で入力してください")
    end
    
  end


end
