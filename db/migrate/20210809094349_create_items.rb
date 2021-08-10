class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|

      t.timestamps
      t.integer :genre_id
      t.string :name
      t.string :image_id
      t.text :introduction
      t.string :price
      t.boolean :is_active, default: true, null: false
    end
  end
end
