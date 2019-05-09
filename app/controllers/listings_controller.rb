class ListingsController < ApplicationController
  before_action :set_listing, only: [:show, :edit, :update, :destroy]

  # GET /listings
  # GET /listings.json
  def index
    @listings = Listing.where(status: :paid) 
  end

  # GET /listings/1
  # GET /listings/1.json
  def show
    @listings_products = @listing.listings_products.includes(:product)
  end

  # The following method updates the status from paid to accepted for a listing
  def set_accepted
    Delivery.create(user_id: current_user.id, listing_id: params[:listing_id])
    @listing = Listing.find(params[:listing_id])
    @listing.status = 2
    @listing.save
    redirect_to root_path
  end

  # GET /listings/new
  def new
    @listing = Listing.new
  end

  # GET /listings/1/edit
  def edit
  end

  # POST /listings
  # POST /listings.json
  def create
    # @listing = Listing.create(user_id: current_user.id, shop_id: current_user.cart.shop_id, status: 1, total: current_user.cart.total)
    # CartProduct.where(current_user.cart.id).each do |cart_product|
    #   ListingsProduct.create(listing_id: @listing.id, product_id: cart_product.id)
    # end
  end

  # PATCH/PUT /listings/1
  # PATCH/PUT /listings/1.json
  def update
    respond_to do |format|
      if @listing.update(listing_params)
        format.html { redirect_to @listing, notice: 'Listing was successfully updated.' }
        format.json { render :show, status: :ok, location: @listing }
      else
        format.html { render :edit }
        format.json { render json: @listing.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /listings/1
  # DELETE /listings/1.json
  def destroy
    @listing.destroy
    respond_to do |format|
      format.html { redirect_to listings_url, notice: 'Listing was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_listing
      @listing = Listing.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def listing_params
      params.fetch(:listing, {})
    end
end
