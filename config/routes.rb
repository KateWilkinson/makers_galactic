Rails.application.routes.draw do
  root 'flights#index'

  resources :flights
  resources :admins
  get 'admin_password' => 'admins#password'
end
