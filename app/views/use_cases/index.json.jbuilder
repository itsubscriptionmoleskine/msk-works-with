json.array!(@use_cases) do |use_case|
  json.extract! use_case, :slug
  json.url partner_url(use_case, format: :json)
end