class HomeController < ApplicationController
	

  def index
  @items = Item.all.order(:id)
  end

	
end


