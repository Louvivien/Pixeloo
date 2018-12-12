class CategoriesController < ApplicationController
	  skip_before_action :authenticate_user!, :only => [:index]
  def index

    if current_user.superadmin_role? 
    @categories = Category.all.order(:id)
      else
    @categories = Category.where("user_id = ?", current_user)
    end

  def index
    @categories = Category.all
  end

  def create
  end



  

  # GET /categories/1
  # GET /categories/1.json
  def show


     puts "Heyy category show"
        @category = Category.find(params[:id])

  end




  # GET /categories/new
  def new
    @category = Category.new
  end

  # GET /categories/1/edit
  def edit
  end

<<<<<<< HEAD
  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(item_params)
    @category.user = current_user


    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'category was successfully created.' }
        format.json { render :show, status: :created, location: @category }
      else
        format.html { render :new }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @category.update(category_params)
        format.html { redirect_to @category, notice: 'category was successfully updated.' }
        format.json { render :show, status: :ok, location: @category }
      else
        format.html { render :edit }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category.destroy
    @category.category_image.purge
    respond_to do |format|
      format.html { redirect_to items_url, notice: 'category was successfully destroyed.' }
      format.json { head :no_content }
    end
=======
  def show
    @items = Item.all.order(:id)
>>>>>>> development
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @category = Category.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_params
      params.require(:category).permit(:title, :description)
    end

end
