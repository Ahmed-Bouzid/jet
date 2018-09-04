class HomeController < ApplicationController
	def index
	end

	def new
	end


	def confirm
	end

	def profil

		@user = current_user
		puts "------------code user---------------"
		puts @user.code_confirm
		puts "------------------------------------"

	end
end
