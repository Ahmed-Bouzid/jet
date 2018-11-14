require 'nexmo'

class User < ApplicationRecord

  has_many :user_flights
  has_many :messages

  mount_uploader :avatar, AvatarUploader

  def transform(value)
    if value.size != 10 
     if value.size <= 10
      a = 10 - value.size
      value = value + ("0" * a)
      puts value
    else
      value = value.slice(1..10)
    end
  end
  return value
end

devise :database_authenticatable, :registerable,
:recoverable, :rememberable, :validatable

  # before_save { self.phone = transform(self.phone) }
  @datetime = DateTime.now

  after_create :send_email


  def send_email
  	ExampleMailer.send_email(self).deliver    
  end

  def validity(number)
    if number.length == 10 && number.start_with?("06") || number.length == 10 && number.start_with?("07") || number.length == 11 && number.start_with?("33")
      true
    end
  end

  def self.send_sms(phone_number, user)
    client = Nexmo::Client.new(api_key: ENV['api_key'], api_secret: ENV['api_secret'])
    client.sms.send(from: 'Stratton', to: "#{phone_number}", text: "Stratton code : #{user.code_confirm}. Valable pendant 3 minutes")
    puts "NEXMO MESSAGE ENVOYÉ"
  end

  def self.verification(user, number)
   if user.code_confirm == nil || user.updated_at < DateTime.now - 1.minutes
    user.code_confirm = rand(1000..9999)
    user.save
    send_sms(number, user)
  else
    puts "user.code_confirm existe deja"
  end
  if @text.to_i == user.code_confirm
    user.verified = true
    user.save
  end
end

end