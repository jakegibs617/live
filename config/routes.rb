Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users, only: [:index, :show, :update, :destroy]

  resources :events, only: [:index, :show, :new, :create, :update, :edit] do
    resources :comments, except: [:show]
  end

  resources :friendships, only: [:index, :show, :create, :update, :destroy]

  resources :eventusers, only: [:create, :destroy]

  resources :searches, only: [:index]

end
