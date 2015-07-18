Rails.application.routes.draw do

  resources :cats, :only => [:index, :show]
  resources :owners, :only => [:index, :show]
  resources :matches

  post '/matches' => 'matches#create', as: :create_matches
  # get '/matches/new', to: 'matches#new'
  
  root 'static_pages#home' 

  get '/auth/:provider/callback', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy', as: :logout
end
