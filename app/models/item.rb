class Item < ApplicationRecord

  attachment:image

  has_many :cart_items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :order_details

  belongs_to :genre

  def favorited_by?(customer)
    favorites.where(customer_id: customer.id).exists?
  end


end
