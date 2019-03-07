json.array!(@apps) do |app|
  json.extract! app, :slug
  json.url partner_url(app, format: :json)
end
