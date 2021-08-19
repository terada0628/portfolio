class Contact < ApplicationRecord

  validates :email, {presence: true, uniqueness: { case_sensitive: false }}
  validates :inquiry, presence: true
  validates :family_name, presence: true
  validates :first_name, presence: true
  validates :family_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :postal_code, numericality: {only_integer: true}, length: {is:7}
  validates :address, presence: true
  validates :telephone_number, presence: true, numericality: {only_integer: true}
  validates :sex, presence: true

end
