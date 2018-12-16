class CataloguesController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:index]

    def show
      
      @location = params[:location]

        puts "Recherche ........"
    if params[:search]
        search = params[:search]
     puts search
      @nonordereditems =  Item.where("lower(title) LIKE '%#{search.downcase}%' OR lower(description) LIKE '%#{search.downcase}%'")
      @items = @nonordereditems.near(@location, 1000, order: 'distance') 

      else
      puts "recherche vide donc puts all"
      @items = Item.all
    end
    end

   
end
