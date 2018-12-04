class HomeController < ApplicationController
skip_before_action :authenticate_user!, :only => [:index]

  def index
  @items = Item.all.order(:id)
  end

	
end


