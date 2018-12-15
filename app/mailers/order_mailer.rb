class OrderMailer < ApplicationMailer


def demandelocation(item, email, order, owner)
@order = order
@email = email
@item = item
@owner = owner
mail(to: @email, subject:'Nouvelle Demande de location')
end

def accepte(item, email, order, customer)
@order = order
@email = email
@item = item
@customer = customer
mail(to: @email, subject:'Location acceptée !')
end


def refuse(item, email, order, customer)
@order = order
@email = email
@item = item
@customer = customer
mail(to: @email, subject:'Location refusée')
end

def confirme_c(item, email, order, customer)
@order = order
@email = email
@item = item
@customer = customer
mail(to: @email, subject:'Location confirmée !')
end

def confirme_o(item, email, order, owner)
@order = order
@email = email
@item = item
@owner = owner
mail(to: @email, subject:'Demande de location confirmée !')
end





end
