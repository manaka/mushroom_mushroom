json.cap_shapes do
  json.array!(@cap_shapes) do |item|
    json.id item.id
    json.name item.name
  end
end
