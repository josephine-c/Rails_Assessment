class Shop < ApplicationRecord
    has_one :contact, as: :contactable
end
