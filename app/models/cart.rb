class Cart < ApplicationRecord
	has_many :line_items, dependent: :destroy

	def add_item(item)
		    current_item = line_items.find_by(item: item)

    if current_item
      current_item.increment(:quantity)
    else
      current_item = line_items.new(item: item)
    end
    current_item
  end

  def total
  line_items.to_a.sum(&:total)
  end


end



