class Api::V1::SearchController < Api::V1::BaseController
  def index
    q = mushroom_params.to_h.reject{|k,v| v == 'null'}.map{|k,v| "#{k}=#{v}"}.join(' AND ')
    @mushrooms = Mushroom.where(q).limit(20)
  end

  private

  def mushroom_params
    params.permit(:name, :edible, :cap_shape_id, :cap_surface_id, :cap_color_id, :bruises, :odor_id, :gill_attachment_id, :gill_spacing_id, :gill_size_id, :gill_color_id, :stalk_shape_id, :stalk_root_id, :stalk_surface_above_ring_id, :stalk_surface_below_ring_id, :stalk_color_above_ring_id, :stalk_color_below_ring_id, :veil_type_id, :veil_color_id, :ring_number_id, :ring_type_id, :spore_print_color_id, :population_id, :habitat_id)
  end

end
