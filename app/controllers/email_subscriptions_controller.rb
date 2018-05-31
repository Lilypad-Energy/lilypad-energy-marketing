class EmailSubscriptionsController < ApplicationController
  protect_from_forgery with: :null_session

  def create
    @subscription = EmailSubscription.new(create_params)

    if verify_recaptcha(model: @subscription) && @subscription.save
      #  :: ToDo
      # trigger confirmation email
      # trigger new subscriber email
      respond_to do |format|
        format.json { head :ok }
      end
    else
      render json: {status: 400}
    end
  end

  private

  def create_params
    params.require(:email_subscription).permit(:email)
  end
end