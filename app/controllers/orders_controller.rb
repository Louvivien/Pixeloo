class OrdersController < ApplicationController
 include OrderInfo

  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :redirect_if_cart_is_empty, only: :new
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_owner, only: [:new, :create, :show, :edit, :update, :destroy]
  before_action :set_customer, only: [:new, :create,:show, :edit, :update, :destroy]
  before_action :set_price, only: [:new,:create]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @owner_id = @cartowner_id
    @customer_id = @cartcustomer_id
    @dailyprice = @cartprice   


  end

  # GET /orders/1/edit
  def edit
  end

  # POST /orders
  # POST /orders.json
  def create
    @order = Order.new(order_params)
    @nb_day = @order.nb_day
    @dailyprice = @cartprice
    @order_price = (@nb_day * @dailyprice)
    @order.user_id = current_user.id
    @order.cart = @cart
    @owner_id = @cartowner_id
    @order.update!(:owner_id=> @owner_id, :order_price=> @order_price) 
    @owner_email = owner_email(@order)
    @item = order_item1(@order)
    @owner = owner(@order)
    OrderMailer.demandelocation(@item, @owner_email, @order, @owner).deliver_now  
    @order.save
    

    respond_to do |format|
      if @order.save
        session.delete(:cart_id)
        format.html { redirect_to order_validations_path}
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
     

    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'La commande a été mise à jour' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end

    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'La commande a été supprimée' }
      format.json { head :no_content }
    end
  end

  private
    
    def redirect_if_cart_is_empty
  if @cart.line_items.empty?
    redirect_to root_url, notice: "Votre panier est vide"
  end
  end

    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :status, :owner_id, :description, :start_date, :nb_day, :phone)
    end

   end
