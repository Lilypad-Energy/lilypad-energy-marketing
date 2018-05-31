class MarketingController < ApplicationController
  protect_from_forgery with: :exception

  def home
  end

  def services
  end

  def contact
  end

  def energy_user
    @email_subscription = EmailSubscription.new
  end

  def grid
  end

  def lilypad_example
  end

  def newnew

  end
end