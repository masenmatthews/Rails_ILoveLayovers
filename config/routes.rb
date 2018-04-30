Rails.application.routes.draw do
  resource :cart, only: [:show]
end
