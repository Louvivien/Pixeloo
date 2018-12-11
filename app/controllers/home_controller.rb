class HomeController < ApplicationController
skip_before_action :authenticate_user!, :only => [:index]

  def index
  @items = Item.all.order(:id)
  end

  def research
    puts "Hey i'm in research!!!!"
    searched_item = Item.find(params[:search])
    @results = MyModel.search(searched_item, hitsPerPage: 10)
  end
	
end


