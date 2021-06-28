json.items do
  json.array!(@mushrooms) do |item|
    json.name item.name
  end
end
