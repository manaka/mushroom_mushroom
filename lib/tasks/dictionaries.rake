require 'dict'

namespace :dictionaries do
  desc 'Populate all dictionaries'
  task populate: :environment do
    Rake::Task['dictionaries:cap_shape'].invoke
    Rake::Task['dictionaries:cap_surface'].invoke
    Rake::Task['dictionaries:color'].invoke
    Rake::Task['dictionaries:odor'].invoke
    Rake::Task['dictionaries:gill_attachment'].invoke
    Rake::Task['dictionaries:gill_spacing'].invoke
    Rake::Task['dictionaries:gill_size'].invoke
    Rake::Task['dictionaries:stalk_shape'].invoke
    Rake::Task['dictionaries:stalk_root'].invoke
    Rake::Task['dictionaries:stalk_surface'].invoke
    Rake::Task['dictionaries:veil_type'].invoke
    Rake::Task['dictionaries:ring_number'].invoke
    Rake::Task['dictionaries:ring_type'].invoke
    Rake::Task['dictionaries:population'].invoke
    Rake::Task['dictionaries:habitat'].invoke
  end

  desc 'TODO'
  task cap_shape: :environment do
    CAP_SHAPE.each { |k, v| CapShape.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task cap_surface: :environment do
    CAP_SURFACE.each { |k, v| CapSurface.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task color: :environment do
    COLORS.each { |k, v| Color.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task odor: :environment do
    ODOR.each { |k, v| Odor.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task gill_attachment: :environment do
    GILL_ATTACHMENT.each { |k, v| GillAttachment.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task gill_spacing: :environment do
    GILL_SPACING.each { |k, v| GillSpacing.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task gill_size: :environment do
    GILL_SIZE.each { |k, v| GillSize.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task stalk_shape: :environment do
    STALK_SHAPE.each { |k, v| StalkShape.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task stalk_root: :environment do
    STALK_ROOT.each { |k, v| StalkRoot.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task stalk_surface: :environment do
    STALK_SURFACE_ABOVE_RING.each { |k, v| StalkSurface.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task veil_type: :environment do
    VEIL_TYPE.each { |k, v| VeilType.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task ring_number: :environment do
    RING_NUMBER.each { |k, v| RingNumber.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task ring_type: :environment do
    RING_TYPE.each { |k, v| RingType.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task population: :environment do
    POPULATION.each { |k, v| Population.create(name: v, abbr: k) }
  end

  desc 'TODO'
  task habitat: :environment do
    HABITAT.each { |k, v| Habitat.create(name: v, abbr: k) }
  end
end
