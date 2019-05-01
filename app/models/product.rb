class Product < ApplicationRecord
  belongs_to :shop
  has_many :listings_product, dependent: :destroy
end
