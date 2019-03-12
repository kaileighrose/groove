Rails.application.routes.draw do
  devise_for :users
  resources :records

  get '/records/artists/:artist', to: 'records#artist', as: 'artist'
  root 'records#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
