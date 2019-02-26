json.array!(@products) do |product|
  json.extract! product, :id
  json.url developer_url(product, format: :json)
end