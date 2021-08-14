class Item < ApplicationRecord

  attachment:image

  has_many :cart_items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :order_details

  belongs_to :genre
end
