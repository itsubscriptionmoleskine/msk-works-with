json.array!(@testimonials) do |testimonial|
  json.extract! testimonial, :slug
  json.url developer_url(testimonial, format: :json)
end