json.array!(@works_withs) do |ww|
  json.extract! ww, :slug
  json.url developer_url(ww, format: :json)
end