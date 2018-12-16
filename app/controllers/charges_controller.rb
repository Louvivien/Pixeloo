class ChargesController < ApplicationController
 include OrderInfo

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

@owner_email = owner_email(@order)
@item = order_item1(@order)
@owner = owner(@order)
@customer = customer(@order)
@owner_email = owner_email(@order)

OrderMailer.confirme_o(@item, @owner_email, @order, @owner).deliver_now  
 OrderMailer.confirme_c(@item, @order.email, @order, @customer).deliver_now 

flash[:notice] = "Le paiement a été effectué"
redirect_to edit_order_validation_path(@order)



rescue Stripe::CardError => e
  flash[:notice] = "Le paiement n'a pas réussi, nous t'invitons à recommencer"
  redirect_to show_order_validation_path(@order)
end

end
