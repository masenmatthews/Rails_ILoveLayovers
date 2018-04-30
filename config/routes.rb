Rails.application.routes.draw do
  root :to => 'products#index'
  resource :cart, only: [:show]

  resources :products

end
