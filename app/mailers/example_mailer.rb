class ExampleMailer < ApplicationMailer
	default from: "stratton.jets@gmail.com"

	def send_email(user)
		@user = user
		mail(to: @user.email, subject: 'Bienvenu')
	end

	# def notify_email
	# 	mail(to: 'stratton.jets@gmail.com', subject: "nouveau message de : ")
	# end

end





