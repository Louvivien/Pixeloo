class CataloguesController < ApplicationController
    skip_before_action :authenticate_user!, :only => [:index]


   

    def show
        @suggestions = Item.select(:title, :description) #or MyModel.find(:all, conditions: [...]) #Select the data you want to load on the typeahead.
        render json: @suggestions
        
        if params[:search]
            search = params[:search]
        puts search
        @items =  Item.where("lower(title) LIKE '%#{search.downcase}%' OR lower(description) LIKE '%#{search.downcase}%'") 
        else
        puts "recherche vide donc puts all"
        @items = Item.all
        end
    end

   
end
