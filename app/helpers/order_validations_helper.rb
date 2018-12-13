module OrderValidationsHelper

	def ordertype(order)
	    if  order.owner_id == current_user.id
	  		@ordertype = "Demande"
			else
	  		@ordertype = "Location"
			end
			return @ordertype
	end


	def owner(order)
  		owner_id = order.owner_id
  		owner = User.find_by id: owner_id		
  		
  		if owner.first_name != nil
  			@owner_name = owner.first_name
  		elsif owner.username != nil
  			@owner_name = owner.username
  		else @owner_name =  "User #{owner_id} (l'utilisateur n'a pas renseigné son nom alors vous pouvez l'appeler comme ca en attendant et lui dire de renseigner son nom et son prénom, ca sera quand même plus pratique)"
  		  			end 
		return @owner_name
	end

	def customer(order)
  		customer_id = order.user_id
  		customer = User.find_by id: customer_id		
  		
  		if customer.first_name != nil
  			@customer_name = customer.first_name
  		elsif customer.username != nil
  			@customer_name = customer.username
  		else @customer_name =  "User #{customer_id} (l'utilisateur n'a pas renseigné son nom alors vous pouvez l'appeler comme ca en attendant et lui dire de renseigner son nom et son prénom, ca sera quand même plus pratique)"
  		  			end 
		return @customer_name
	end

end
