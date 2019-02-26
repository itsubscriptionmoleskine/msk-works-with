json.array!(@apps) do |app|
  json.extract! app, :slug
  json.url developer_url(app, format: :json)
end
