class CreateProps < ActiveRecord::Migration[5.2]
  def change
    create_table :props do |t|
      t.string :name
      t.integer :rent
      t.text :address
      t.integer :age
      t.text :remarks

      t.timestamps
    end
  end
end
