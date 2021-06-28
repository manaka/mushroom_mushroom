class CreateStalkShapes < ActiveRecord::Migration[6.1]
  def change
    create_table :stalk_shapes do |t|
      t.string :name
      t.string :abbr

      t.timestamps
    end
  end
end
