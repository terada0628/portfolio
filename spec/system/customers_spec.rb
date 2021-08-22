# require 'rails_helper'

# RSpec.describe 'ユーザー新規登録', type: :system do
  # before do
  #   @customer = create(:customer)
    # @customer.save
  # end

  # context 'ユーザーが新規登録できるとき' do

  # it '正しい情報を入力すればユーザー新規登録ができてトップページに移動する' do

    # visit items_path
    # visit root_path
    # expect(page).to have_content('ログイン')
    # visit customers_sign_in_path
    # fill_in 'email', with: @customer.email
    # fill_in 'password', with: @customer.password
    # fill_in 'password_confirmation', with: @customer.password_confirmation
    # expect{
    #   find('input[name="commit"]').click
    # }.to change { Customer.count }.by(1)
    # expect(current_path).to eq(root_path)
    # expect(
    #   find('.customer_nav').find('span').hover
    #   ).to have_content('ログアウト')
    #   expect(page).to have_no_content('新規登録')
    #   expect(page).to have_no_content('ログイン')
#     end

#   end

# end

