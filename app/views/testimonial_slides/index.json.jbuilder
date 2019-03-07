json.array!(@testimonial_slides) do |slide|
  json.extract! slide, :id
  json.url partner_url(slide, format: :json)
end