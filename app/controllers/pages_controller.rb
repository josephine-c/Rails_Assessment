class PagesController < ApplicationController

    def index
        if current_user != nil
            # grabbing all listings that have a user id matching current user.
            @lists = Listing.where(user_id: current_user.id)
    
            # grab all deliveries(courier jobs) that match current user id.
            # @jobs = Listing.find(Deilvery.where(user_id: current_user.id).listing_id)
            @jobs = Delivery.where(user_id: current_user.id)
        end
    end
end