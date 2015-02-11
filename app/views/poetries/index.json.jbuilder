json.array!(@poetries) do |poetry|
  json.extract! poetry, :id, :title
  json.url poetry_url(poetry, format: :json)
end
