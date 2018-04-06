Rails.application.routes.draw do
  root to: "marketing#home"
  # Marketing Routes
  get '/home', to: 'marketing#home'
  get '/products', to: 'marketing#products'
  get '/projects', to: 'marketing#projects'
  ###################
end