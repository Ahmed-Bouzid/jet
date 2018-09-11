class AircraftController < ApplicationController
	before_action :find_aircraft, only: [:show, :trip]
	before_action :set_trip_variables, only: [:search_results, :trip]

	def new
	end

	def show
	end

	def search_results
		@aircrafts = Aircraft.at_departure_airport(params[:departure_city], params[:number_of_passengers])
	end

	def create
	end

	def trip
	end

	private

	def find_aircraft
		@aircraft = Aircraft.find(params[:id])
	end	

	def set_trip_variables
		@departure_city = params[:departure_city]
		@arrival_city = params[:arrival_city]
		@number_of_passengers = params[:number_of_passengers]
	end

end
