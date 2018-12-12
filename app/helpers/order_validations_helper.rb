module OrderValidationsHelper

def owner(order)
    if  order.owner_id == current_user.id
  		@ordertype = "Demande"
		else
  		@ordertype = "Location"
		end
		return @ordertype
	end


end
