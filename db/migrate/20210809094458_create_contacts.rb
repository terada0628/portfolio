class CreateContacts < ActiveRecord::Migration[5.2]
  def change
    create_table :contacts do |t|
      t.timestamps
      t.string :inquiry
      t.string :title
      t.text :content
      t.string :family_name
      t.string :first_name
      t.string :family_name_kana
      t.string :first_name_kana
      t.string :email
      t.string :postal_code
      t.string :address
      t.string :telephone_number
      t.string :sex
    end
  end
end
