class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item

def total
	if item.price && quantity
  item.price * quantity
  else
  	item.total = "0.0".to_d 
end
end



end
