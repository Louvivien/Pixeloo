# Preview all emails at http://localhost:3000/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview


def demandelocation
OrderMailer.demandelocation(Item.first, 'vivien.richaud@gmail.com', Order.first, "Robert")
end

def accepte
OrderMailer.accepte(Item.first, 'vivien.richaud@gmail.com', Order.first, "Robert")
end

def refuse
OrderMailer.refuse(Item.first, 'vivien.richaud@gmail.com', Order.first, "Robert")
end

def confirme_c
OrderMailer.confirme_c(Item.first, 'vivien.richaud@gmail.com', Order.first, "Robert")
end

def confirme_o
OrderMailer.confirme_o(Item.first, 'vivien.richaud@gmail.com', Order.first, "Robert")
end

end
