class LineItem < ApplicationRecord
  belongs_to :cart
  belongs_to :item
  belongs_to :user


def total
	if item.price && quantity
  item.price * quantity
  else
  	item.price 
end
end



end