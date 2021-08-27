class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  enum sex: { 男性: 0, 女性: 1 }

  has_many :cart_items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :favorite_items, through: :favorites, source: :item
  has_many :orders, dependent: :destroy

  validates :family_name, presence: true
  validates :first_name, presence: true
  validates :family_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :postal_code, presence: true, numericality: { only_integer: true }, length: { is: 7 }
  validates :address, presence: true
  validates :telephone_number, presence: true, numericality: { only_integer: true }
  validates :sex, presence: true

  def active_for_authentication?
    super && (is_deleted == false)
  end
end
