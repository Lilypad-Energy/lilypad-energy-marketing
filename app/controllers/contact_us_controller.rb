class ContactUsController < ApplicationController
  protect_from_forgery with: :exception

  def create
    if ContactUsMailer.outreach_email(params[:outreach_data]).deliver_now
      ContactUsMailer.confirmation_email(params[:outreach_data]).deliver_now
      render head :ok
    else
      render status: 500
    end
  end
end