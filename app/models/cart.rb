class Cart < ApplicationRecord
  belongs_to :shop
  belongs_to :user
  has_many :products, through: :cart_product, dependent: :destroy
  has_many :cart_product
end
