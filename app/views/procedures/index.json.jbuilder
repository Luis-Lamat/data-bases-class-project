json.array!(@procedures) do |procedure|
  json.extract! procedure, :id, :description, :consumible_lab, :consumible_general
  json.url procedure_url(procedure, format: :json)
end
