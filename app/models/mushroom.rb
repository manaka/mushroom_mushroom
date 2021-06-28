class Mushroom < ApplicationRecord
  belongs_to :cap_shape
  belongs_to :cap_surface
  belongs_to :cap_color
  belongs_to :odor
  belongs_to :gill_attachment
  belongs_to :gill_spacing
  belongs_to :gill_size
  belongs_to :gill_color
  belongs_to :stalk_shape
  belongs_to :stalk_root
  belongs_to :stalk_surface_above_ring
  belongs_to :stalk_surface_below_ring
  belongs_to :stalk_color_above_ring
  belongs_to :stalk_color_below_ring
  belongs_to :veil_type
  belongs_to :veil_color
  belongs_to :ring_number
  belongs_to :ring_type
  belongs_to :spore_print_color
  belongs_to :population
  belongs_to :habitat
end
