class ChargesController < ApplicationController
  def new
  end

  def create
  # Amount in cents
  @total = params[:amount]

  customer = Stripe::Customer.create(
    :email => params[:stripeEmail],
    :source  => params[:stripeToken]
    )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @total,
    :description => 'Rails Stripe customer',
    :currency    => 'eur'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to aircraft_path
  end
end
