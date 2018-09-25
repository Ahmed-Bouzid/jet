class UsersController < ApplicationController
	before_action :set_user

	def show 
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

end
