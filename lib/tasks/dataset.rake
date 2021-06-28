require 'csv'

namespace :dataset do

  desc 'Parse mushroom dataset and populate db'
  task parse: :environment do
    cap_shapes = CapShape.pluck(:id, :abbr).to_h
    cap_surfaces = CapSurface.pluck(:id, :abbr).to_h
    colors = Color.pluck(:id, :abbr).to_h
    odors = Odor.pluck(:id, :abbr).to_h
    gill_attachments = GillAttachment.pluck(:id, :abbr).to_h
    gill_spacings = GillSpacing.pluck(:id, :abbr).to_h
    gill_sizes = GillSize.pluck(:id, :abbr).to_h
    stalk_shapes = StalkShape.pluck(:id, :abbr).to_h
    stalk_roots = StalkRoot.pluck(:id, :abbr).to_h
    stalk_surfaces = StalkSurface.pluck(:id, :abbr).to_h
    veil_types = VeilType.pluck(:id, :abbr).to_h
    ring_numbers = RingNumber.pluck(:id, :abbr).to_h
    ring_types = RingType.pluck(:id, :abbr).to_h
    populations = Population.pluck(:id, :abbr).to_h
    habitats = Habitat.pluck(:id, :abbr).to_h

    mushrooms = []
    CSV.foreach('data_src/agaricus-lepiota.data', headers: false).with_index(1) do |row, index|
      row[11] = 'missing' if row[11] == '?'
      name = "Mushroom #{index}"
      mushroom = {
        name: name,
        edible: row[0] == 'e',
        cap_shape_id: cap_shapes.key(row[1]),
        cap_surface_id: cap_surfaces.key(row[2]),
        cap_color_id: colors.key(row[3]),
        bruises: row[4] == 't',
        odor_id: odors.key(row[5]),
        gill_attachment_id: gill_attachments.key(row[6]),
        gill_spacing_id: gill_spacings.key(row[7]),
        gill_size_id: gill_sizes.key(row[8]),
        gill_color_id: colors.key(row[9]),
        stalk_shape_id: stalk_shapes.key(row[10]),
        stalk_root_id: stalk_roots.key(row[11]),
        stalk_surface_above_ring_id: stalk_surfaces.key(row[12]),
        stalk_surface_below_ring_id: stalk_surfaces.key(row[13]),
        stalk_color_above_ring_id: colors.key(row[14]),
        stalk_color_below_ring_id: colors.key(row[15]),
        veil_type_id: veil_types.key(row[16]),
        veil_color_id: colors.key(row[17]),
        ring_number_id: ring_numbers.key(row[18]),
        ring_type_id: ring_types.key(row[19]),
        spore_print_color_id: colors.key(row[20]),
        population_id: populations.key(row[21]),
        habitat_id: habitats.key(row[22])
      }
      mushrooms << mushroom

      if (index % 10).zero?
        Mushroom.create(mushrooms) #todo remove validations
        mushrooms = []
      end
    end

  end

end
