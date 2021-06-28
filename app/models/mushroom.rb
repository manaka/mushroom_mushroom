class Mushroom < ApplicationRecord
  belongs_to :cap_shape
  belongs_to :cap_surface
  belongs_to :cap_color, class_name: 'Color', foreign_key: 'cap_color_id'
  belongs_to :odor
  belongs_to :gill_attachment
  belongs_to :gill_spacing
  belongs_to :gill_size
  belongs_to :gill_color, class_name: 'Color', foreign_key: 'gill_color_id'
  belongs_to :stalk_shape
  belongs_to :stalk_root
  belongs_to :stalk_surface_above_ring, class_name: 'StalkSurface', foreign_key: 'stalk_surface_above_ring_id'
  belongs_to :stalk_surface_below_ring, class_name: 'StalkSurface', foreign_key: 'stalk_surface_below_ring_id'
  belongs_to :stalk_color_above_ring, class_name: 'Color', foreign_key: 'stalk_color_above_ring_id'
  belongs_to :stalk_color_below_ring, class_name: 'Color', foreign_key: 'stalk_color_below_ring_id'
  belongs_to :veil_type
  belongs_to :veil_color, class_name: 'Color', foreign_key: 'veil_color_id'
  belongs_to :ring_number
  belongs_to :ring_type
  belongs_to :spore_print_color, class_name: 'Color', foreign_key: 'spore_print_color_id'
  belongs_to :population
  belongs_to :habitat
end
