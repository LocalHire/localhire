Rails.application.routes.draw do



  resources :charges

  #Guy - For all 'resources' we can put on the one line if we want, just separate each with a comma, it will take up less room, but also less readable though.


  root 'searches#new'
  resources :bookings
  resources :lenders
  resources :items
  resources :searches
  devise_for :users, controllers: { registrations: 'users/registrations' }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
