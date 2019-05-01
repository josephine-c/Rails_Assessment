class Product < ApplicationRecord
  belongs_to :shop
  has_many listings, through: :listings_product, dependent: :destroy
end
