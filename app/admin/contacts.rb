ActiveAdmin.register Contact do

  menu label: "お問い合わせ"

  filter :created_at, label: "お問い合わせ日", as: :date_range

  index do |f|
    selectable_column
    column(:created_at)
    column(:inquiry)
    column(:title)
    column(:content)
    column(:email)
    column(:family_name)
    column(:first_name)
    column(:family_name_kana)
    column(:first_name_kana)
    column(:sex)
    column(:postal_code)
    column(:address)
    column(:telephone_number)
    actions
  end


  # filter :created_time_gteq, label: "作成時刻（最小）", as: :select, collection: created_times
  # filter :created_time_lteq, label: "作成時刻（最大）", as: :select, collection: created_times

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :inquiry, :title, :content, :family_name, :first_name, :family_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :sex
  #
  # or
  #
  # permit_params do
  #   permitted = [:inquiry, :title, :content, :family_name, :first_name, :family_name_kana, :first_name_kana, :email, :postal_code, :address, :telephone_number, :sex]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
