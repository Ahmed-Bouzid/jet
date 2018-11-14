class ExampleMailer < ApplicationMailer
	default from: "stratton.jets@gmail.com"

	def send_email(user)
		@user = user
		mail(to: user.email, subject: 'Bienvenu')
	end

	def notify_email(message)
		@message = message
		@user = User.find(@message.user_id)	
		@user_complete = @user.last_name.capitalize + " " + @user.first_name.capitalize
		mail(to: 'stratton.jets@gmail.com', subject: "Nouveau message de : #{@user_complete} ")
	end

end





