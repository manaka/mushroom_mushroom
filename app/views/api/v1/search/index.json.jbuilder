json.mushrooms do
  json.array!(@mushrooms) do |item|
    json.name item.name
    json.edible item.edible
    json.cap_shape_id item.cap_shape_id
    json.cap_surface_id item.cap_surface_id
    json.cap_color_id item.cap_color_id
    json.bruises item.bruises
    json.odor_id item.odor_id
    json.gill_attachment_id item.gill_attachment_id
    json.gill_spacing_id item.gill_spacing_id
    json.gill_size_id item.gill_size_id

  end
end
