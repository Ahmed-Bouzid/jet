class ChargesController < ApplicationController

  def new
  end

  def create
  # Amount in cents

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
    )
  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => 5000,
    :description => 'Rails Stripe customer',
    :currency    => 'eur'
    )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to aircraft_path
end
end
