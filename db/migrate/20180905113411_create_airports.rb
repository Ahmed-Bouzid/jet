class CreateAirports < ActiveRecord::Migration[5.2]
  def change
    create_table :airports do |t|
      t.string :Code
      t.string :Name
      t.string :City
      t.string :Country

      t.timestamps
    end
  end
end
