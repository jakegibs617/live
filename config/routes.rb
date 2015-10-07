Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users, only: [:index, :show, :update, :destroy]

  resources :events, only: [:index, :show, :new, :create, :update, :edit] do
    resources :comments
  end

  resources :friendships, only: [:index, :show, :create, :update, :destroy]
end
