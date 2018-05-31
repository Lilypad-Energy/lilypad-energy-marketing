class ContactUsController < ApplicationController
  protect_from_forgery with: :exception

  def create
    # ToDo
    # need to validate params
    # need to get mailosaur setup
    #
    #### this will send an email if uncommented ####
    # if ContactUsMailer.outreach_email(outreach_params).deliver_now
    #   ContactUsMailer.confirmation_email(outreach_params).deliver_now
      render head :ok
    # else
    #   render status: 500
    # end
  end

  private

  def outreach_params
    params.require(:outreach).permit(:first_name, :last_name, :email, :content)
  end
end