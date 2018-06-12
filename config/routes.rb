Rails.application.routes.draw do
  root to: "marketing#home"
  # Marketing Routes
  get '/home', to: 'marketing#home'
  ###################

  # Public Resources
  resources :email_subscriptions, only: [:create]
  resources :contact_us, only: [:create]
  ###################
end
