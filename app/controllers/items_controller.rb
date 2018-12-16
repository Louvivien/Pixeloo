class ItemsController < ApplicationController
  before_action :set_item, only: [:show, :edit, :update, :destroy]
   before_action :check_profile, only: [:new]
  skip_before_action :authenticate_user!, :only => [:show]
    before_action :city, only: [:create]


  # GET /items
  # GET /items.json
  def index

    if current_user.superadmin_role? 
    @items = Item.all.order(:id)
      else
    @items = Item.where("user_id = ?", current_user)
    end

  end



  

  # GET /items/1
  # GET /items/1.json
  def show


     

  end




  # GET /items/new
  def new
    @item = Item.new
  end

  # GET /items/1/edit
  def edit
  end

  # POST /items
  # POST /items.json
  def create
    @item = Item.new(item_params)
    @item.user = current_user
    @item.city = @city


    respond_to do |format|
      if @item.save
        format.html { redirect_to @item, notice: 'Le matériel a été ajouté !' }
        format.json { render :show, status: :created, location: @item }
      else
        format.html { render :new }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /items/1
  # PATCH/PUT /items/1.json
  def update
    respond_to do |format|
      if @item.update(item_params)
        format.html { redirect_to @item, notice: 'Le matériel a été mis à jour' }
        format.json { render :show, status: :ok, location: @item }
      else
        format.html { render :edit }
        format.json { render json: @item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /items/1
  # DELETE /items/1.json
  def destroy
    @item.destroy
    @item.item_image.purge
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'Le matériel a été supprimé' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
      @owner = User.find(@item.user_id)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:item).permit(:title, :description, :price, :address, :item_image, :latitude, :longitude)
    end

    def city 
    results = Geocoder.search(params[:item][:address])
    @city = results.first.city
    end

    def check_profile 
      if current_user.first_name == nil or current_user.last_name == nil or current_user.phone == nil or current_user.address == nil or current_user.description == nil
        flash[:warning] = "Afin d'ajouter du matériel, complète ton profile"
        redirect_to edit_user_registration_path
      end
    end

    

end
