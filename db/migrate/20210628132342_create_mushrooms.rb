class CreateMushrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :mushrooms do |t|
      t.string :name
      t.boolean :edible
      t.references :cap_shape, null: false, foreign_key: true
      t.references :cap_surface, null: false, foreign_key: true
      t.integer :cap_color, null: false, foreign_key: true
      t.boolean :bruises
      t.references :odor, null: false, foreign_key: true
      t.references :gill_attachment, null: false, foreign_key: true
      t.references :gill_spacing, null: false, foreign_key: true
      t.references :gill_size, null: false, foreign_key: true
      t.integer :gill_color, null: false, foreign_key: true
      t.references :stalk_shape, null: false, foreign_key: true
      t.references :stalk_root, null: false, foreign_key: true
      t.integer :stalk_surface_above_ring, null: false, foreign_key: true
      t.integer :stalk_surface_below_ring, null: false, foreign_key: true
      t.integer :stalk_color_above_ring, null: false, foreign_key: true
      t.integer :stalk_color_below_ring, null: false, foreign_key: true
      t.references :veil_type, null: false, foreign_key: true
      t.integer :veil_color, null: false, foreign_key: true
      t.references :ring_number, null: false, foreign_key: true
      t.references :ring_type, null: false, foreign_key: true
      t.integer :spore_print_color, null: false, foreign_key: true
      t.references :population, null: false, foreign_key: true
      t.references :habitat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
