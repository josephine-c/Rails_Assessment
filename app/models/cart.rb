class Cart < ApplicationRecord
  belongs_to :shop
  belongs_to :user
  has_many :cart_products
  has_many :products, through: :cart_product, dependent: :destroy
end
