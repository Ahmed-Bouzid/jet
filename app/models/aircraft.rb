# == Schema Information
#
# Table name: aircrafts
#
#  id              :bigint(8)        not null, primary key
#  tail            :string
#  category        :string
#  aircraft_type   :string
#  maxpax          :integer
#  actual_position :string
#  price           :string
#  company         :string
#  origin          :string
#  yom             :string
#  yor             :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Aircraft < ApplicationRecord

	#Aircraft.at_departure_airport
	def self.at_departure_airport(departure_airport, number_of_passengers)
		all_available_aircrafts = []

		self.find_each do |aircraft|
			if aircraft.actual_position == departure_airport && aircraft.maxpax >= number_of_passengers.to_i
				all_available_aircrafts << aircraft
			end
		end
		return all_available_aircrafts
	end

	#@airport.image_url
	def image_url
		self.tail + '.jpg'
	end

	def trip_cost_without_commission(departure_city, arrival_city, number_of_passengers)
		departure_airport = Airport.find_by(city: departure_city)
		flight_price = ( Airport.time_between_airports(departure_city, arrival_city).to_i * self.price.to_i / 60 ).to_i
		departure_tax = departure_airport.departure_tax.to_i
		catering_price = departure_airport.catering_price(number_of_passengers).to_i
		return flight_price + departure_tax + catering_price
	end

	def trip_cost_with_commission(departure_city, arrival_city, number_of_passengers)
		(self.trip_cost_without_commission(departure_city, arrival_city, number_of_passengers) * 1.05).to_i
	end

	def trip_commission(departure_city, arrival_city, number_of_passengers)
		self.trip_cost_with_commission(departure_city, arrival_city, number_of_passengers) - self.trip_cost_without_commission(departure_city, arrival_city, number_of_passengers)
	end


end
