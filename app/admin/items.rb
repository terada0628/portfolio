ActiveAdmin.register Item do
  permit_params :genre_id, :name, :image_id, :introduction, :price, :is_active


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :genre_id, :name, :image_id, :introduction, :price, :is_active
  #
  # or
  #
  # permit_params do
  #   permitted = [:genre_id, :name, :image_id, :introduction, :price, :is_active]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
