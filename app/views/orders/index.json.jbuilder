json.array!(@orders) do |order|
  json.extract! order, :id, :entry_date, :expenses, :tax, :total_cost, :promised_date
  json.url order_url(order, format: :json)
end
