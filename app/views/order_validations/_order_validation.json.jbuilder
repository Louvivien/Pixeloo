json.extract! order_validation, :id, :name, :address, :email, :status, :cart_id, :created_at, :updated_at
json.url order_url(order_validation, format: :json)
