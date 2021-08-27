class CreateFavorites < ActiveRecord::Migration[5.2]
  def change
    create_table :favorites do |t|
      t.timestamps
      t.integer :customer_id
      t.integer :item_id
    end
  end
end
