ActiveAdmin.register Item do
  permit_params :genre_id, :name, :image, :introduction, :price, :is_active

  menu label: "商品"

  form do |f|
      f.inputs "Items" do
        f.input :genre
        f.input :name
        f.attachment_field :image, :as => :file
        # f.input :image, :as => :file
        f.input :introduction
        f.input :price
      end
      f.actions
    end

    index do
      selectable_column
      column (:genre)
      column (:name)
      # column (:image) do
        # attachment_image_tag(item_image, :image)
      # end
      column (:introduction)
      column (:price)
      actions
    end

    show do |item_image|
      attributes_table do
        row :genre
        row :name
        row :image do
          attachment_image_tag(item_image, :image)
        end
        row :introduction
        row :price
      end
    end

end
