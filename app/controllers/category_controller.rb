class CategoryController < ApplicationController
  def create
  end

  def destroy
  end

  def edit
  end

  def show
  	  
        
  end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

end

 



