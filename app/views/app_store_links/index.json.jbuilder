json.array!(@app_store_links) do |app_store_link|
  json.extract! app_store_link, :id
  json.url developer_url(app_store_link, format: :json)
end
