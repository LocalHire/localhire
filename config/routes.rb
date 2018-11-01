Rails.application.routes.draw do
  root 'searches#new'
  resources :bookings
  resources :lenders
  resources :items
  resources :searches
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
