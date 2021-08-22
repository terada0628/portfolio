require 'rails_helper'

RSpec.describe 'ユーザー新規登録', type: :system do
  before do
    @customer = build(:customer)
  end

  context 'ユーザーが新規登録できるとき' do

  it '正しい情報を入力すればユーザー新規登録ができてトップページに移動する' do

    visit root_path
    expect(page).to have_content('新規登録')
    visit customers_sign_up_path
    fill_in 'family_name', with: @customer.family_name
    fill_in 'first_name', with: @customer.first_name
    fill_in 'family_name_kana', with: @customer.family_name_kana
    fill_in 'first_name_kana', with: @customer.first_name_kana
    fill_in 'sex', with: @customer.sex
    fill_in 'email', with: @customer.email
    fill_in 'postal_code', with: @customer.postal_code
    fill_in 'address', with: @customer.address
    fill_in 'telephone_number', with: @customer.telephone_number
    fill_in 'password', with: @customer.password
    fill_in 'password_confirmation', with: @customer.password_confirmation
    expect{
      find('input[name="commit"]').click
    }.to change { Customer.count }.by(1)
    expect(current_path).to eq(root_path)
    expect(
      find('.customer_nav').find('span').hover
      ).to have_content('ログアウト')
      expect(page).to have_no_content('新規登録')
      expect(page).to have_no_content('ログイン')
    end

  end

end

