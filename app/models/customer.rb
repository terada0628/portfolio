class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: { 男性: 0, 女性: 1 }


  has_many :cart_items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :orders, dependent: :destroy

  def active_for_authentication?
    super && (self.is_deleted == false)
  end

end
