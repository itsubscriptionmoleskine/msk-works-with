json.array!(@example_images) do |img|
  json.extract! img, :id
  json.url partner_url(img, format: :json)
end