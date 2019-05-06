class Product < ApplicationRecord
  belongs_to :shop
  has_many :listings, through: :listings_product, dependent: :destroy
  has_many :listings_product
  has_many_attached :pictures
  enum size: [:xsmall, :small, :medium, :large, :xlarge, :onesize]
end
