json.array!(@locations) do |location|
  json.extract! location, :id, :street, :street_number, :suburb, :postal_code
  json.url location_url(location, format: :json)
end
