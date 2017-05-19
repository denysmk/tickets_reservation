Rails.application.routes.draw do
  resources :trips
  resources :tickets
  devise_for :users
  root 'trips#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
