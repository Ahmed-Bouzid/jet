class CreateFlights < ActiveRecord::Migration[5.2]
   def change
    create_table :flights do |t|
      t.string :departure
      t.string :arrival
      t.date :departure_date
      t.date :return_date
      t.integer :people

      t.timestamps
    end
  end
end
