Rails.application.routes.draw do
  get 'event/stripe_callback'
  get 'event/payment_profile'
  resources :lenders
  resources :items
  resources :charges

  #Guy - For all 'resources' we can put on the one line if we want, just separate each with a comma, it will take up less room, but also less readable though.

  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
