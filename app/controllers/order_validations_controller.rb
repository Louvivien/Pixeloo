class OrderValidationsController < ApplicationController
   include OrderInfo

  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :redirect_if_cart_is_empty, only: :new
  before_action :set_order, only: [:show, :edit, :update, :destroy]



  # GET /orders
  # GET /orders.json
  def index

    if current_user.superadmin_role? 
    @orders = Order.all.order(:id)
      else
    @orders = Order.where("user_id = ?", current_user).or(Order.where("owner_id = ?", current_user))
    end


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
      OrderMailer.demandelocation(Order.first).deliver_now


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

  # PATCH/PUT /order_validations/1
  # PATCH/PUT /order_validations/1.json
  def update

    @customer = customer(@order)
    @item = order_item1(@order)

    if params[:order][:status] == "accepté"
    OrderMailer.accepte(@item, @order.email, @order, @customer).deliver_now
    flash[:notice] = "La demande de location a été acceptée"  
    elsif params[:order][:status] == "refusé"
    OrderMailer.refuse(@item, @order.email, @order, @customer).deliver_now  
    "La demande de location a été refusée"
       end

    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to order_validations_path}
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
      format.html { redirect_to orders_url, notice: 'La demande a été supprimée' }
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



