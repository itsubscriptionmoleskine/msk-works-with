json.array!(@use_cases) do |use_case|
  json.extract! use_case, :slug
  json.url developer_url(use_case, format: :json)
end