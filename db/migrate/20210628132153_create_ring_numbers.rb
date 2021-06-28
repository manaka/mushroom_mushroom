class CreateRingNumbers < ActiveRecord::Migration[6.1]
  def change
    create_table :ring_numbers do |t|
      t.string :name
      t.string :abbr

      t.timestamps
    end
  end
end
