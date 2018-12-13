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


end
