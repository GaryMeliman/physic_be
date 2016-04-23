Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :abavilities, only:[:create,:update]

  get 'pharmacy', to: 'profile#pharmacy'
  get 'user', to: 'profile#user'

  devise_for :users
  devise_for :pharmacies, :controllers => { registrations: 'registrations' }

  root 'home#index'

  get 'home/index'

  get '/search/:id', to: 'home#search', as: 'search'

  get '/type_ahead/:q', to: 'home#type_ahead', as: 'type_ahead'

  get '/petitions/:medicine_id/:pharmacy_id', to:'petitions#create', as: 'create_petition'

  get '/petitions/:id', to: 'petitions#update', as: 'update_petition'

  get '/near', to: 'home#near', as: 'near_pharmacies'

  get '/show_map/:id', to: 'home#show_map', as: 'show_map'

end
