class ChargesController < ApplicationController
  def new
    @amount = Plan.find(params[:plan_id]).price
    @formatted_amount = Plan.find(params[:plan_id]).price * 100

  end

  def create
    @amount = Plan.find(params[:plan_id]).price * 100
    @formatted_amount = Plan.find(params[:plan_id]).price

    customer = Stripe::Customer.create(
      email: 'example@stripe.com',
      card: params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      customer: customer.id,
      amount: @amount,
      description: 'Rails Stripe customer',
      currency: 'usd'
    )

  rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to charges_path
  end
end
