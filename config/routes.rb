RottenMango::Application.routes.draw do
  get "reviews/new"
  get "reviews/create"
  # get "sessions/new"
  # get "sessions/create"
  # get "users/new"
  # get "users/create"
  resources :movies do
    resources :reviews, only: [:new, :create]
  end
  resources :users, only: [:new, :create]
  resources :sessions, only: [:new, :create, :destroy]
  root to: 'movies#index'
  
end
