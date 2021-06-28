class CreateGillSizes < ActiveRecord::Migration[6.1]
  def change
    create_table :gill_sizes do |t|
      t.string :name
      t.string :abbr

      t.timestamps
    end
  end
end
