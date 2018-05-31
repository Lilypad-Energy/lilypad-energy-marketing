class EmailSubscriptionsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    subscription = EmailSubscription.new(create_params)

    if subscription.save
      #  :: ToDo
      # trigger confirmation email
      # trigger new subscriber email
      head :ok
    else
      #  trigger flash error
      render status: 500
    end
  end

  private

  def create_params
    params.require(:email_subscription).permit(:email, :first_name)
  end
end