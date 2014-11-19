json.array!(@vehicles) do |vehicle|
  json.extract! vehicle, :id, :series_num, :model, :brand, :color, :placas
  json.url vehicle_url(vehicle, format: :json)
end
