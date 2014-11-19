json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :middle_name, :last_name, :salary
  json.url employee_url(employee, format: :json)
end
