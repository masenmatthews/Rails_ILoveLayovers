Rails.application.routes.draw do
  root :to => 'products#index'
  resource :cart, only: [:show]

  resources :products

  get '/signup' => 'accounts#new'
  post '/accounts' => 'accounts#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
