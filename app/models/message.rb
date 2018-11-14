class Message < ApplicationRecord
	belongs_to :user

	 # after_create :notify_email

	def notify_email
		ExampleMailer.notify_email(self).deliver
	end
end
