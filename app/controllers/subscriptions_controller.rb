class SubscriptionsController < ApplicationController
  def new
    @plan = Plan.find(params[:plan_id])
    @subscription = @plan.subscriptions.new
  end

  def create
    @plan = Plan.find(params[:plan_id])
    @subscription = @plan.subscriptions.new(subscription_params)
    if @subscription.save
      redirect_to plans_path
    else
      render :new
    end
  end

  def edit
    @plan = Plan.find(params[:plan_id])
    @subscription = @plan.subscriptions.new(subscription_params)
    render :edit
  end

  def update
    @plan = Plan.find(params[:plan_id])
    @subscription = @plan.subscriptions.new(subscription_params)
    if @subscription.update(subscription_params)
      redirect_to plans_path
    else
      render :edit
    end
  end


  private

  def subscription_params
    params.require(:subscription).permit(:email)
  end
end
