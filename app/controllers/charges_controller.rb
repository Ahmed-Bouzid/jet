require 'gmail'


class ChargesController < ApplicationController

  def new 
  end

  #paiement strip en euro

  def create
    aircraft = Aircraft.find(params[:aircraft_id])
    @departure_city = params[:departure_city]
    @arrival_city = params[:arrival_city]
    @number_of_passengers = params[:number_of_passengers]
    @current_user_id = current_user.id
    @user_name = User.find(@current_user_id).last_name
    @user_email = User.find(@current_user_id).email
    @user_phone = User.find(@current_user_id).phone.sub(/^./, '33')
    @amount = aircraft.trip_cost_with_commission(@departure_city, @arrival_city, @number_of_passengers).to_i * 100


    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
      )
    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'eur'
      )

    send_mail(@user_email, @user_name, @departure_city, @arrival_city, @number_of_passengers)
    send_sms(@user_phone, @user_name)
    redirect_to root_path, notice: "Votre paiement a bien ete pris en compte"

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to aircraft_path
  end


  def send_mail(adresse, nom, depart, destination, nombre_de_passager )
    gmail = Gmail.connect(ENV['ADRESSE'],ENV['MDP'])
    email = gmail.compose do
      to adresse
      subject "Reservation de Jet privé"
      body "Bonjour #{nom},

      Ceci est un mail récapitulatif de votre commande sur Stratton Jets.
      Notre equipe prend en charge votre vol en jet privé au depart de #{depart}, a destination de #{destination} pour #{nombre_de_passager} passager(s).

      John Smith, General Manager"
    end
    email.deliver!
  end


  def send_sms(numero, nom)
   client = Nexmo::Client.new(api_key: '3442d6bd', api_secret: 'aTY7YWJjGGnOgcQo')

   response = client.sms.send(from: 'Stratton', to: "#{numero}", 
    text: "Bonjour #{nom}, votre reservation sur Stratton a bien été prise en compte")
   if response.messages.first.status == '0'
    puts "Sent message id=#{response.messages.first.message_id}"
  else
    puts "Error: #{response.messages.first.error_text}"
  end

end
end




