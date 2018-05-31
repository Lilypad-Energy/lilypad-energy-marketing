class MarketingController < ApplicationController
  protect_from_forgery with: :exception

  def home
  end

  def services
  end

  def contact
  end

  def energy_user
  end

  def grid
  end

  def forms_examples
    @email_subscription = EmailSubscription.new
  end
end