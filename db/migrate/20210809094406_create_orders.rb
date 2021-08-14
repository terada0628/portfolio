class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.timestamps
      t.integer :customer_id
      t.string :postal_code
      t.string :address
      t.date :delivery_day
      t.time :delivery_time
      t.integer :shipping_cost
      t.integer :tatal_payment
      t.string :name
      t.integer :payment_method
      t.integer :status, default: 0, null: false
    end
  end
end
