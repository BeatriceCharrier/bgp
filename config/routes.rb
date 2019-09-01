Rails.application.routes.draw do
  root to: 'gossips#index'
  resources :welcome
  resources :contact       #   , only: [:index]
  resources :team         #, only: [:index]
  resources :gossips #, only: [:index, :new, :create, :destroy]
    resources :comments do
      resources :likes, only: [:new, :create, :destroy]
    end
    resources :likes, only: [:new, :create, :destroy]

  resources :tags
  resources :users
  resources :cities
  resources :sessions, only: [:new, :create, :destroy]
  resources :conversations do
    resources :private_messages
  end
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html



