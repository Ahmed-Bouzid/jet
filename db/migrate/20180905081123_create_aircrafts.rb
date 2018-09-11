class CreateAircrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts do |t|
      t.string :tail
      t.string :category
      t.string :aircraft_type
      t.integer :maxpax
      t.string :actual_position
      t.string :price
      t.string :company
      t.string :origin
      t.string :yom
      t.string :yor

      t.timestamps
    end
  end
end
