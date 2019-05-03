class Listing < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  enum status: [:pending, :paid, :accepted, :purchased, :delivered]
  has_one :order, dependent: :destroy
  has_many :products, through: :listings_product, dependent: :destroy
  has_one :delivery, dependent: :destroy
end
