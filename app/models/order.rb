class Order < ApplicationRecord

  enum status: {a: 0, b: 1, c: 2, d: 3, e: 4}

  enum payment_method: {クレジットカード: 0, 現金払い: 1}

  belongs_to :customer

  has_many :order_details, dependent: :destroy

  def total_price
    array =[]
    self.order_details.each do |order_detail|
      array << order_detail.price * order_detail.amount
    end
      array.sum
  end


end
