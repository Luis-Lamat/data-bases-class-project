json.array!(@order_vehicle_workshops) do |order_vehicle_workshop|
  json.extract! order_vehicle_workshop, :id, :vehicle_id, :workshop_id, :order_id
  json.url order_vehicle_workshop_url(order_vehicle_workshop, format: :json)
end
