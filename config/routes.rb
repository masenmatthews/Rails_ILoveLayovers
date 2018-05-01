Rails.application.routes.draw do
  root :to => 'welcome#index'
  resource :cart, only: [:show]

  resources :products
  resources :flights
  resources :about
  resources :quotes
  resources :order_items
  resources :charges
  
  get '/signup' => 'accounts#new'
  post '/accounts' => 'accounts#create'

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
