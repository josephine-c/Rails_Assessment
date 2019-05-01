class Product < ApplicationRecord
  belongs_to :shop
  has_many listings, through: :listings_product, dependent: :destroy
  has_one_attached :image, as: :imageable
end
