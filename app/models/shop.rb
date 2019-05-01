class Shop < ApplicationRecord
    has_one :contact, as: :contactable, dependent: :destroy
    has_many :listings, dependent: :destroy
    has_many :products, dependent: :destroy
end
