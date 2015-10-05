Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users, only: [:index, :update, :destroy]

  resources :events, only: [:index, :new, :create]
end
