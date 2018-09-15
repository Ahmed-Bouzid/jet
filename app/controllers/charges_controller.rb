require 'gmail'
require 'twilio-ruby'


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
    sens_sms(@user_phone)
    
    
    redirect_to root_path, notice: "Paiement accepté"
  rescue Stripe::CardError => e
    flash.now[:error] = e.message
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


  def sens_sms(phone)

    @client = Twilio::REST::Client.new(ENV['twilio_key'],ENV['twilio_secret']) 
    message = @client.messages.create( 
      :body => "[NE PAS REPONDRE] Reservation effectuée, paiement accepté. Vous recevrez un mail recapitulatif d'ici quelques minutes", 
      from: '+33755537209',       
      to: "#{phone}" 
      ) 

  end

end




