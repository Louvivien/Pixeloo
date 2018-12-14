class ChargesController < ApplicationController

def new
	end

def create
  # Amount in cents
  

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => params[:amount],
    :description => params[:customer_id],
    :currency    => 'eur'
  )


@order = Order.find_by id: params[:order_id]
confirmedorder = @order.update(status: "confirmé")
redirect_to edit_order_validation_path(@order)



rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to show_order_validation_path(@order)
end

end
