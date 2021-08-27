ActiveAdmin.register Customer do
  permit_params :email, :family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address,
                :telephone_number, :sex, :is_deleted, :created_at, :updated_at

  menu label: '顧客情報'

  index do |_f|
    selectable_column
    column(:email)
    column(:family_name)
    column(:first_name)
    column(:family_name_kana)
    column(:first_name_kana)
    column(:postal_code)
    column(:address)
    column(:telephone_number)
    column(:sex)
    column(:is_deleted)
    actions
  end

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :sex, :is_deleted
  #
  # or
  #
  # permit_params do
  #   permitted = [:email, :encrypted_password, :reset_password_token, :reset_password_sent_at, :remember_created_at, :family_name, :first_name, :family_name_kana, :first_name_kana, :postal_code, :address, :telephone_number, :sex, :is_deleted]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end
end
