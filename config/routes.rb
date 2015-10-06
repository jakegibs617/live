Rails.application.routes.draw do
  root 'events#index'
  devise_for :users
  resources :users, only: [:index, :update, :destroy]

  resources :events, only: [:index, :show, :new, :create, :update, :edit] do
    resources :comments, only: [:index, :show, :new, :create, :update, :edit, :destroy]
  end
end
