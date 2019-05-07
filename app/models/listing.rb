class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  enum status: {pending: 0, paid: 1, accepted: 2, purchased: 3, delivered: 4}
  has_one :order, dependent: :destroy
  has_many :products, through: :listings_product, dependent: :destroy
  has_many :listings_product
  has_one :delivery, dependent: :destroy
end
