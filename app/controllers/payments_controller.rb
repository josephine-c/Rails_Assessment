class PaymentsController < ApplicationController
    skip_before_action :verify_authenticity_token
    def stripe
        p params
    end

    def success
        # check stripe success token
        Listing.create()
        current_user.clear_cart
    end
end