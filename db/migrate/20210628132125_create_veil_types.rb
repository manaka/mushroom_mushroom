class CreateVeilTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :veil_types do |t|
      t.string :name
      t.string :abbr

      t.timestamps
    end
  end
end
