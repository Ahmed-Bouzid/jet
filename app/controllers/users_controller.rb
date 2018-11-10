class UsersController < ApplicationController
	
	before_action :set_user

	def show 
		@user = current_user
	end

	def edit
	end

	def create
	end

	def authentification
		puts "AUTHENTIFICATION"
		if @user.phone != nil
			if @user.phone.start_with?("06") || @user.phone.start_with?("07")
				@nexmo  = @user.phone.sub(/^./, "33")
				User.verification(@user, @nexmo)
			end
		end
	end

	def get_authentification
		if params[:new] != nil
			@user.phone = params[:new]
			@user.save
		elsif params[:text] != nil
			if params[:text].to_i == @user.code_confirm
				@user.verified = true
				@user.save	
			end			
		end
		respond_to do |format|
			format.html { redirect_to request.referrer}
		end	
	end

	private

	def set_user
		@user = current_user
	end

end

