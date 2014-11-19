json.array!(@labors) do |labor|
  json.extract! labor, :id, :estimated_time, :description, :cost, :external_comision, :internal_comision
  json.url labor_url(labor, format: :json)
end
