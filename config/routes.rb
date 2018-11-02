Rails.application.routes.draw do

  root 'searches#new'
  devise_for :users

  resources :charges

  #Guy - For all 'resources' we can put on the one line if we want, just separate each with a comma, it will take up less room, but also less readable though.


  get 'howitworks/hire', to: 'howitworks#hire'
  get 'howitworks/lend', to: 'howitworks#lend'
  get 'howitworks/fees', to: 'howitworks#fees'

  get 'legal/terms', to: 'legal#terms'
  get 'legal/privacy', to: 'legal#privacy'
  get 'legal/cookiepolicy', to: 'legal#cookiepolicy'

  resources :bookings
  resources :lenders
  resources :items
  resources :searches
 
  
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
