class EmailSubscriptionsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    @subscription = EmailSubscription.new(create_params)

    if verify_recaptcha(model: @subscription) && @subscription.save
      #  :: ToDo
      # trigger confirmation email
      # trigger new subscriber email
      #  trigger flash success
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