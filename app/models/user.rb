class User < ApplicationRecord

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  after_create :send_sms

  def send_sms

    @user = User.last
    @code_confirm = Faker::Number.number(4)
    puts @code_confirm

    @user.code_confirm = @code_confirm
    @user.save

    puts @user.code_confirm
    puts @user.inspect
    @user_phone = @user.phone.to_i + 33000000000 

    # client = Nexmo::Client.new(api_key: '3442d6bd', api_secret: 'aTY7YWJjGGnOgcQo')
    # response = client.sms.send(from: 'Ruby', to: @user_phone , text: 'Vous etes desormais inscrit a note site web Stratton.')
    # if response.messages.first.status == '0'
    #   puts "Sent message id=#{response.messages.first.message_id}"
    #   puts "message sent to #{@user_phone}"
    # else
    #   puts "Error: #{response.messages.first.error_text}"
    # end

  end

end
