json.array!(@products) do |product|
  json.extract! product, :id
  json.url partner_url(product, format: :json)
end