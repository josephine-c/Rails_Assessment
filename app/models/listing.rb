class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  has_one :transaction, dependent: :destroy
  has_many :products, through: :listings_product, dependent: :destroy
  has_one :delivery, dependent: :destroy
end
