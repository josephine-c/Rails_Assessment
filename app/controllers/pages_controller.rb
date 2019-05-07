class PagesController < ApplicationController

    def index
        # grabbing all listings that have a user id matching current user.
        @lists = Listing.where(user_id: current_user.id)
        # grab all deliveries(courier jobs) that match current user id.
        p @jobs = Listing.find(Deilvery.where(user_id: current_user.id).listing_id)
    end
end