json.array!(@partners) do |partner|
  json.extract! partner, :slug
  json.url partner_url(partner, format: :json)
end