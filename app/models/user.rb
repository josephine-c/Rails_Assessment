class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :cart
  has_one :contact, as: :contactable, dependent: :destroy
  accepts_nested_attributes_for :contact
  has_many :listings, dependent: :destroy
  has_many :delveries, dependent: :destroy
  has_many_attached :pictures
  def with_contact
    build_contact if contact.nil?
    self
  end

  def clear_cart
    p "running clear cart method"
    CartProduct.destroy(CartProduct.where(cart_id: self.cart.id).ids)
    self.update_cart_total
  end

  # Finds all items 
  def update_cart_total
    total = 0
    CartProduct.where(cart_id: self.cart.id).each do |cart_product|
      total += Product.find(cart_product.product_id).price
    end
    self.cart.total = total
    self.cart.save()
  end
end
