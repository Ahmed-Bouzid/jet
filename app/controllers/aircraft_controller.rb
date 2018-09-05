class AircraftController < ApplicationController

	def new
	end

	def index
		@aircrafts = Aircraft.all

		puts "-----oo------"
		puts params
		puts "-----oo------"

	end

	def create

	
		puts "-----------"
		@departure = params[:departure] 
		puts @departure 
		@arrival = params[:arrival]
		puts @arrival
		@departure_date= params[:departure_date]
		puts @departure_date
		@people = params[:people]
		puts @people
		puts "-----------"

		redirect_to aircrafts_path(@departure, @departure_date, @arrival, @people )


	end

end
