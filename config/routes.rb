Rails.application.routes.draw do
  get 'pharmacy', to: 'profile#pharmacy'
  get 'user', to: 'profile#user'

  devise_for :users
  devise_for :pharmacies

  root 'home#index'

  get 'home/index'

  get '/search/:id', to: 'home#search', as: 'search'

  get 'type_ahead/:q', to: 'home#type_ahead'

end
