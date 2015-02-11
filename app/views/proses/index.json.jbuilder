json.array!(@proses) do |prose|
  json.extract! prose, :id, :title
  json.url prose_url(prose, format: :json)
end
