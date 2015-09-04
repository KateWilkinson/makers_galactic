Rails.application.routes.draw do
  root 'flights#index'

  resources :flights do
    resources :tickets
  end

  resources :admins
end
