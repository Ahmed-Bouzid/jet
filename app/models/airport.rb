# == Schema Information
#
# Table name: airports
#
#  id         :bigint(8)        not null, primary key
#  code       :string
#  name       :string
#  city       :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Airport < ApplicationRecord

	def self.all_airports_city_code_array
		all_airports_array = []

		self.order(:city).each do |airport|
			all_airports_array << [airport.city + ' (' + airport.code + ')', airport.city ]
		end
		return all_airports_array
	end

	def self.time_between_airports(departure_airport, arrival_airport)
		airport_array = [departure_airport, arrival_airport]
		if airport_array.include?("Bordeaux") && airport_array.include?("Le Bourget")
			70
		elsif airport_array.include?("Bordeaux") && airport_array.include?("Lyon")
			70
		elsif airport_array.include?("Bordeaux") && airport_array.include?("Nice")
			90
		elsif airport_array.include?("Le Bourget") && airport_array.include?("Lyon")
			50
		elsif airport_array.include?("Le Bourget") && airport_array.include?("Nice")
			80
		elsif airport_array.include?("Lyon") && airport_array.include?("Nice")
			40
		else
			60
		end

	end

	def departure_tax
		80
	end

	def catering_price(number_of_passengers)
		100 * number_of_passengers.to_i
	end

	
end
