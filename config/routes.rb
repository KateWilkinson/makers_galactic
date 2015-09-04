Rails.application.routes.draw do
  root 'flights#index'

  resources :flights
  resources :tickets
  resources :admins
end
