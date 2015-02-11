json.array!(@pieces) do |piece|
  json.extract! piece, :id, :title
  json.url piece_url(piece, format: :json)
end
