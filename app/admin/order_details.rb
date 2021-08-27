ActiveAdmin.register OrderDetail do
  menu label: '注文商品'

  index do |_f|
    selectable_column
    column(:order_id)
    # column(:item_id)
    column 'Item', sortable: :item_id do |order_detail|
      order_detail.item.name
    end
    column(:amount)
    column(:price)
    actions
  end
end
