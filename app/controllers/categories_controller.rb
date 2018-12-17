class CategoriesController < ApplicationController
	  skip_before_action :authenticate_user!

  def index
    @categories = Category.all
  end

  def create
  end

  def destroy
  end

  def edit
  end

  def reflex
    items = Item.all.order(:id)
    @items =items.all.where(category_id: 1)
  end

  def eclairage
    items = Item.all.order(:id)
    @items =items.all.where(category_id: 2)
  end

  def objectifs
    items = Item.all.order(:id)
    @items =items.all.where(category_id: 3)
  end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_item
      @item = Item.find(params[:id])
    end

end
