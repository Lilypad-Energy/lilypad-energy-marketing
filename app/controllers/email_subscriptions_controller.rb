class EmailSubscriptionsController < ApplicationController
  protect_from_forgery with: :exception

  def create
    subscription = EmailSubscription.new(create_params)

    if subscription.save
      head :ok
    else
      head :ok
    end
  end

  private

  def create_params
    params.require(:email_subscription).permit(:email, :first_name)
  end
end