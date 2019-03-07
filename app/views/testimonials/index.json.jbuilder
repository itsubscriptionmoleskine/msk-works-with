json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :slug
  json.url partner_url(testimonial, format: :json)
end