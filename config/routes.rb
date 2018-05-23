Rails.application.routes.draw do
  root to: "marketing#home"
  # Marketing Routes
  get '/home', to: 'marketing#home'
  get '/grid', to: 'marketing#grid'
  ###################
end