json.dictionaries do
  json.cap_shapes do
    json.array!(@cap_shapes) do |item|
      json.id item.id
      json.name item.name
    end
  end
  json.cap_surfaces do
    json.array!(@cap_surfaces) do |item|
      json.id item.id
      json.name item.name
    end
  end
  json.colors do
    json.array!(@colors) do |item|
      json.id item.id
      json.name item.name
    end
  end
  json.odor do
    json.array!(@odor) do |item|
      json.id item.id
      json.name item.name
    end
  end
  json.gill_attachments do
    json.array!(@gill_attachments) do |item|
      json.id item.id
      json.name item.name
    end
  end
  json.gill_spacings do
    json.array!(@gill_spacings) do |item|
      json.id item.id
      json.name item.name
    end
  end
  json.gill_sizes do
    json.array!(@gill_sizes) do |item|
      json.id item.id
      json.name item.name
    end
  end

end