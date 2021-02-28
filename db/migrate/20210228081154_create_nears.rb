class CreateNears < ActiveRecord::Migration[5.2]
  def change
    create_table :nears do |t|
      t.references :prop, foreign_key: true
      t.string :station_name
      t.string :line_name
      t.integer :minutes_foot

      t.timestamps
    end
  end
end
