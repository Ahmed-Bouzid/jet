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

    redirect_to root_path, notice: "Votre paiement a bien ete pris en compte"

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to aircraft_path
  end


def send_mail(adresse)

    gmail = Gmail.connect(ENV['ADRESSE'],ENV['MDP'])
    email = gmail.compose do
      to adresse
    subject "Reservation de Jet privé"
      body "Bonjour #{@user_name},

      Vous venez de reserver un Jet privé avec Stratton.
      Notre equipe prend en charge votre vol et vous enverra tres bientot un flight-brief.
      
      John Smith, General Manager"
    end
    email.deliver!


  end
end




