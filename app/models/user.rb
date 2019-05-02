class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :contact, as: :contactable, dependent: :destroy
  has_many :listings, dependent: :destroy
  has_many :delveries, dependent: :destroy
  # has_many_attached :pictures, as: :imageable
end
