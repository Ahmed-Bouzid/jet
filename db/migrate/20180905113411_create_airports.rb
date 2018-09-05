class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :airportCode
      t.string :airportName
      t.string :airportCity
      t.string :airportCountry

      t.timestamps
    end
  end
end
