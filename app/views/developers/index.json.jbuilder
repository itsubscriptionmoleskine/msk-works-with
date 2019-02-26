json.array!(@developers) do |developer|
  json.extract! developer, :slug
  json.url developer_url(developer, format: :json)
end