class CreateCapSurfaces < ActiveRecord::Migration[6.1]
  def change
    create_table :cap_surfaces do |t|
      t.string :name
      t.string :abbr

      t.timestamps
    end
  end
end
