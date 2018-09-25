class CreateUserFlights < ActiveRecord::Migration[5.2]
  def change
    create_table :user_flights do |t|
      t.references :user, foreign_key: true
      t.string :place_departure
      t.string :place_arrival
      t.date :date_departure
      t.float :flight_price
      t.string :number_of_people
      t.float  :flight_time
      t.timestamps
    end
  end
end
