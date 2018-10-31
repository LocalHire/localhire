Rails.application.routes.draw do
  resources :bookings
  resources :lenders
  resources :items
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
