json.array!(@fiscal_data) do |fiscal_datum|
  json.extract! fiscal_datum, :id, :RFC, :entity_name, :date_of_birth
  json.url fiscal_datum_url(fiscal_datum, format: :json)
end
