class AircraftController < ApplicationController

	def new
	end

	def show

		
		@aircraft_id = params[:id]
		@aircraft_Type = Aircraft.find(@aircraft_id).Type
		@aircraft_Category = Aircraft.find(@aircraft_id).Category
		@aircraft_price = Aircraft.find(@aircraft_id).price
		@company = Aircraft.find(@aircraft_id).company
		@origin = Aircraft.find(@aircraft_id).origin
		@YOM = Aircraft.find(@aircraft_id).YOM
		@YOR =Aircraft.find(@aircraft_id).YOR
		@image_url = Aircraft.find(@aircraft_id).Tail
		@aircraft = Aircraft.find(@aircraft_id) 
		@price = @aircraft_price.to_i
		@commission = (@price * 5)/ 100
		@total = @price + @commission

		

		
	end

	def index
		
		@aircrafts = Aircraft.all
		@departure = params[:a][0]  
		@arrival = params[:a][1]  
		@departure_date = params[:a][2]  
		@people = params[:a][3]

		
		
	end

	def create

		@departure = params[:departure] 
		@arrival = params[:arrival]
		@departure_date= params[:departure_date]
		@people = params[:people]
		redirect_to aircrafts_path(a: [@departure, @arrival, @departure_date, @people])

	end

end
