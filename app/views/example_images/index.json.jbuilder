json.array!(@example_images) do |img|
  json.extract! img, :id
  json.url developer_url(img, format: :json)
end