class ExampleMailer < ApplicationMailer
	default from: "stratton.jets@gmail.com"

	def send_email(user)
		@user = user
		mail(to: @user.email, subject: 'Bienvenu')
	end

	def notify_email(message)
		@message = message
		mail(to: 'stratton.jets@gmail.com', subject: "nouveau message de : #{User.find(@message.user_id).email}")

	end

end





