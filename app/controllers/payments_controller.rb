class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def stripe
        #create new listing
        client_reference_id = params[:data][:object][:client_reference_id]
        @listing = Listing.create(user_id: client_reference_id, shop_id: User.find(client_reference_id).cart.shop_id, status: 1, total: User.find(client_reference_id).cart.total)
        CartProduct.where(cart_id: User.find(client_reference_id).cart.id).each do |cart_product|
            ListingsProduct.create(listing_id: @listing.id, product_id: cart_product.product_id)
        end

        # create order
        Order.create(listing_id: @listing.id, stripe_verification: params[:payment][:id])

        # Clears all cart_products associated with this cart
        User.find(client_reference_id).clear_cart
    end

    def success
        
    end
end