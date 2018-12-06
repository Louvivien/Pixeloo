class CategoryController < ApplicationController
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
end
