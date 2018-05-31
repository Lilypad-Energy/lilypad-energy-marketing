Rails.application.routes.draw do
  root to: "marketing#home"
  # Marketing Routes
  get '/home', to: 'marketing#home'
  get '/grid', to: 'marketing#grid'
  get '/lilypad-example', to: 'marketing#lilypad_example'
  get '/energy-user', to: 'marketing#energy_user'
  get '/forms-examples', to: 'marketing#forms_examples'
  ###################

  # Public Resources
  resources :email_subscriptions, only: [:create]
  resources :contact_us, only: [:create]
  ###################
end