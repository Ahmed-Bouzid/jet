class AddDestIdToUser < ActiveRecord::Migration[5.2]
	def change
		add_column :messages, :dest_id, :int
	end
end
