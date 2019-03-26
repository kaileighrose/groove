Rails.application.routes.draw do
  devise_for :users
  resources :records do
  		resources :artists, only: [:show]
  end
  
  root 'records#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
