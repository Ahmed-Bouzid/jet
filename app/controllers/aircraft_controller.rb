class AircraftController < ApplicationController

	def new
	end

	def index

		
		@aircrafts = Aircraft.all

		@departure = params[:a][0]  
		@arrival = params[:a][1]  
		@departure_date = params[:a][2]  
		@people = params[:a][3] 

		puts "-----oo------"
		puts @departure
		puts @arrival
		puts @departure_date
		puts @people
		puts "-----------"
		
		

	end

	def create

		@departure = params[:departure] 
		@arrival = params[:arrival]
		@departure_date= params[:departure_date]
		@people = params[:people]
		redirect_to aircrafts_path(a: [@departure, @arrival, @departure_date, @people])

	end

end
