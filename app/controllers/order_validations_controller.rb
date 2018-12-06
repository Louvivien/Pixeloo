class OrderValidationsController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :redirect_if_cart_is_empty, only: :new
  before_action :set_order, only: [:show, :edit, :update, :destroy]


  # GET /orders
  # GET /orders.json
  def index
    order_validation = ""
    @orders = Order.all.order(:id)
  end
  

  # GET /order_validations/1
  # GET /order_validations/1.json
  def show
  end

  # GET /order_validations/new
  def new
    @order = Order.new


  end

  # GET /order_validations/1/edit
  def edit
  end

  # POST /order_validations
  # POST /order_validations.json
  def create
    @order = Order.new(order_params)
      @order.cart = @cart


    respond_to do |format|
      if @order.save
        session.delete(:cart_id)
        format.html { redirect_to order_validations_path, notice: "Commande envoyée" }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order_validations/1
  # PATCH/PUT /order_validations/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_validations_path, notice: 'Le statut de votre demande a été mis à jour' }
        format.json { render :index, status: :ok, location: order_validations_path}
      else
        format.html { render :edit }
        format.json { render json: @order_validation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order_validations/1
  # DELETE /order_validations/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
     def order_params
      pp = params.require(:order).permit(:name, :address, :email, :status)
        return pp
    end
end
