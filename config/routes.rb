Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :abavilities, only:[:create,:update]

  get 'pharmacy', to: 'profile#pharmacy'

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

  namespace :api do
    namespace :v1 do
      get 'user', to: 'profile#user'
      mount_devise_token_auth_for "User", at: 'auth'
      get '/search/:id', to: 'home#search'
      get '/medicine_search/:query', to: 'home#medicine_search'
      get '/petitions/create/:pharmacy_id/:medicine_id', to: 'petitions#create'
    end
  end
end
