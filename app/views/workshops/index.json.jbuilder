json.array!(@workshops) do |workshop|
  json.extract! workshop, :id, :name, :description
  json.url workshop_url(workshop, format: :json)
end
