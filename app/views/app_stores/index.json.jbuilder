json.array!(@app_stores) do |app_store|
  json.extract! app_store, :id
  json.url partner_url(app_store, format: :json)
end
