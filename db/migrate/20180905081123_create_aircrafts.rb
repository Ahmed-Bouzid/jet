class CreateAircrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts do |t|
      t.string :aircraftTail
      t.string :aircraftCategory
      t.string :aircraftType
      t.integer :aircraftMaxpax
      t.string :aircraftHomebase

      t.timestamps
    end
  end
end
