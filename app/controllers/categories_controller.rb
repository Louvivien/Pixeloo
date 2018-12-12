class CategoriesController < ApplicationController
	  skip_before_action :authenticate_user!, :only => [:index]

  def create
  end

  def destroy
  end

  def edit
  end

  def show
    @items = Item.all.order(:id)
  end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

end
