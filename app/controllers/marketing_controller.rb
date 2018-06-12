class MarketingController < ApplicationController
  protect_from_forgery with: :exception

  def home
    @email_subscription = EmailSubscription.new
  end

  def services
  end

  def contact
  end

  def energy_user
  end

  def grid
  end

end
