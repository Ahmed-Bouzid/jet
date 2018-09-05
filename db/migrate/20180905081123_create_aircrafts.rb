class CreateAircrafts < ActiveRecord::Migration[5.2]
  def change
    create_table :aircrafts do |t|
      t.string :Tail
      t.string :Category
      t.string :Type
      t.integer :Maxpax
      t.string :Homebase

      t.timestamps
    end
  end
end
