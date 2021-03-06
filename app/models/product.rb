class Product < ApplicationRecord
  belongs_to :shop
  has_many :listings_products
  has_many :listings, through: :listings_product, dependent: :destroy
  has_many :cart_product
  has_many :carts, through: :cart_product, dependent: :destroy
  has_many_attached :pictures
  enum size: {xsmall: 0, small: 1, medium: 2, large: 3, xlarge: 4, NA: 5}
end
