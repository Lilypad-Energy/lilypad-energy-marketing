Rails.application.routes.draw do
  root to: "marketing#home"
  # Marketing Routes
  get '/home', to: 'marketing#home'
  get '/grid', to: 'marketing#grid'
  get '/lilypad-example', to: 'marketing#lilypad_example'
  get '/energy-user', to: 'marketing#energy_user'
  ###################

  resource :email_subscriptions, only: [:create]
end