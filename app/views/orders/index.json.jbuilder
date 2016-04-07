json.array!(@orders) do |order|
  json.extract! order, :id, :user_id, :delivery_address, :delivery_date
  json.url order_url(order, format: :json)
end
