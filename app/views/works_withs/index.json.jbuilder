json.array!(@works_withs) do |ww|
  json.extract! ww, :slug
  json.url partner_url(ww, format: :json)
end