Rails.application.routes.draw do
  resources :factories
  devise_for :models

  resources :users
  resources :homes
  resources :products
  resources :messages, only: [:create]
  #

  resources :conversations, only: [:create] do
    member do
      post :close
    end
  end

  
  root :to => 'users#index'
end
