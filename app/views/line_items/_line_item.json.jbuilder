json.extract! line_item, :id, :cart_id, :item_id, :quantity, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
