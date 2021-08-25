ActiveAdmin.register Order do

  permit_params :postal_code, :address, :delivery_day, :delivery_time, :total_payment, :name, :payment_method, :status

  menu label: "注文履歴"

  filter :delivery_day, label: "配達日", as: :date_range


  form do |f|
    f.inputs do
      f.input :postal_code
      f.input :address
      f.input :delivery_day
      f.input :delivery_time
      f.input :total_payment
      f.input :name
      f.input :payment_method
      f.input :status, as: :select, collection: Order.statuses_i18n.invert
      f.actions
    end
  end


  index do |f|
    selectable_column
    column(:name)
    column(:customer_id)
    column(:postal_code)
    column(:address)
    column(:delivery_day)
    column(:delivery_time)
    column(:total_payment)
    column(:payment_method)
    column(:status) do |order|
      order.status_i18n
    end
    actions
  end

  show do |f|
    attributes_table do
    row(:customer_id)
    row(:postal_code)
    row(:address)
    row(:delivery_day)
    row(:delivery_time)
    row(:total_payment)
    row(:name)
    row(:payment_method)
    row(:status) do |order|
      order.status_i18n
    end

    #注文商品の名前と数量を表示
    row :order_details do
      order.order_details.collect { |n|
      "【名前:#{n.item.name}, 数量:#{n.amount}】"
      }.join(', ')
    end
    # order.order_details.each do |order_detail|
    #   # binding.pry
    #   row(:amount)
    #   # row(:order_detail.item.name)
    # end
    end
  end


end
