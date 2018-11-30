Rails.application.routes.draw do

  root 'searches#new'

  get '/dashboard/:id' => 'users#show', as: 'dashboard' 
  # resources :users, only: [:show]
  # get 'dashboard', to: 'dashboard#index', as: 'dashboard'
  # get 'dashboardkn/index', to: 'dashboard#index'
  # get 'dashboard/index', to: 'dashboard#index'

  get 'howitworks/hire', to: 'howitworks#hire'
  get 'howitworks/lend', to: 'howitworks#lend'
  get 'howitworks/fees', to: 'howitworks#fees'

  get 'legal/terms', to: 'legal#terms'
  get 'legal/privacy', to: 'legal#privacy'
  get 'legal/cookiepolicy', to: 'legal#cookiepolicy'

 
  resources :lenders, :borrowers, :searches, :charges
  resources :bookings #, only:[:index]

  resources :items do 
    member do
      put "add", to: "items#booking"
      put "remove", to: "items#booking"
    end
  end 

  resources :conversations do 
    resources :messages
  end 

  devise_for :users, controllers: { registrations: 'users/registrations' }


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
