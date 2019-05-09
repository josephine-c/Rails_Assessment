class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def stripe
        params.each do |param|
            p param
        end
    end

    def success
        # check stripe success token
        # Listing.create()
        current_user.clear_cart
    end
end