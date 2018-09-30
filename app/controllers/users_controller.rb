class UsersController < ApplicationController
	before_action :set_user

	def show 

		@bon = scrap_euro_usd 

	end

	def edit
	end

	private

	def set_user
		@user = User.find(params[:id])

	end


	def create
		@user = User.create(user_params)
	end

	private

# Use strong_parameters for attribute whitelisting
# Be sure to update your create() and update() controller methods.

def user_params
	params.require(:user).permit(:avatar)
end

def scrap_euro_usd

	page = Nokogiri::HTML(open('https://www.forexagone.com/outils-forex/convertisseur-taux-de-change'))
	page.xpath('//*[@id="main"]/div[1]/div/table/tbody/tr[1]/td[1]/strong/span').each do |info|
		rate = info.to_s.delete "</span>"
		return rate.to_f
	end
end


end

