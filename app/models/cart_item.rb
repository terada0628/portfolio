class CartItem < ApplicationRecord
  belongs_to :customer
  belongs_to :item

  validates :amount, presence: true

  def sub_total_price
    (self.item.price * self.amount)
  end

end
