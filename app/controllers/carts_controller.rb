class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_cart, only: [:show, :edit, :update, :destroy]

  # GET /carts
  # GET /carts.json
  def index
    @carts = Cart.all
  end

  # GET /carts/1
  # GET /carts/1.json
  def show
    @cart_products = @cart.cart_products.includes(:product)
    unless CartProduct.where(cart_id: current_user.cart.id).empty?
      stripe_session = Stripe::Checkout::Session.create(
        payment_method_types: ['card'],
        customer_email: current_user.email,
        client_reference_id: current_user.id,
        line_items: [{
            name: "My shopping list",
            amount: current_user.cart.total, # Cart total
            currency: 'aud',
            quantity: 1,
        }],
        payment_intent_data: {
            metadata: {
                listing_id: @cart.id
            }
        },
        success_url: 'https://blooming-lowlands-28068.herokuapp.com/payments/success',
        cancel_url: 'https://blooming-lowlands-28068.herokuapp.com/cancel',
        )
    @stripe_session_id = stripe_session.id
    end
  end

  # GET /carts/new
  def new
    @cart = Cart.new
  end

  # GET /carts/1/edit
  def edit
  end

  # POST /carts
  # POST /carts.json
  def create
    @cart = Cart.new(cart_params)

    respond_to do |format|
      if @cart.save
        format.html { redirect_to @cart, notice: 'Cart was successfully created.' }
        format.json { render :show, status: :created, location: @cart }
      else
        format.html { render :new }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1
  # PATCH/PUT /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to @cart, notice: 'Cart was successfully updated.' }
        format.json { render :show, status: :ok, location: @cart }
      else
        format.html { render :edit }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end


  def add_to_cart
    ### Exception here: ( if shop_id == session[:shop]/current_shop)
      # current_user.cart.total += Product.find(params[:product]).price()
      # current_user.cart.save
      CartProduct.create(cart_id: current_user.cart.id, product_id: params[:product]) ## Exception to be added for checking if shop is the same as shop for previous items.
      current_user.update_cart_total
  end

  #Destroys the item that matches
  def remove_from_cart
    p "running remove form cart method"
    CartProduct.destroy(params[:cart_product_id])
    current_user.update_cart_total
    redirect_to current_user.cart
  end

  #destroys all CartProducts associated with cart
  # def clear_cart
  #   p "running clear cart method"
  #   CartProduct.destroy(CartProduct.where(cart_id: current_user.cart.id))
  #   update_cart_total
  # end

  # # Finds all items 
  # def update_cart_total
  #   total = 0
  #   CartProduct.where(cart_id: current_user.cart.id).each do |cart_product|
  #     total += Product.find(cart_product.product_id).price
  #   end
  #   current_user.cart.total = total
  #   current_user.cart.save()
  # end

  # DELETE /carts/1
  # DELETE /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to carts_url, notice: 'Cart was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cart
      @cart = Cart.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cart_params
      params.fetch(:cart, {})
    end
end
