module CurrentCart
  private

  def set_cart
    @cart = Cart.find_by(id: session[:cart_id]) || Cart.create
    session[:cart_id] ||= @cart.id
  end

  	def set_owner
  		@currentlineitem = LineItem.find_by cart_id: @cart.id
  		@firstlineitem_id = @currentlineitem.item_id
  		@firstitem_id = Item.find_by id: @firstlineitem_id
  		@cartowner_id = @firstitem_id.user_id
  	end

	def set_customer
		@cartcustomer_id = current_user.id
  	end



end     