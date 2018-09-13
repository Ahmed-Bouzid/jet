class ChargesController < ApplicationController

  def new 
  end

  def create
    aircraft = Aircraft.find(params[:aircraft_id])

    @amount = aircraft.trip_cost_with_commission(params[:departure_city], params[:arrival_city], params[:number_of_passengers]).to_i * 100
    # Amount in cents

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

    redirect_to root_path, notice: "Votre paiement a ete pris en compte"

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to aircraft_path
  end


end
