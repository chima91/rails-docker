Rails.application.routes.draw do
  # get 'users/new'
  # get 'users/create'
  # get 'users/me'
  get 'mypage', to: 'users#me'
  # get 'home/index'
  # get 'sessions/create'
  # get 'sessions/destroy'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'boards', to: 'boards#index'
  # get 'boards/new', to: 'boards#new'
  # get 'boards/:id', to: 'boards#show'
  # post 'boards', to: 'boards#create'

  # get 'comments/create'
  # get 'comments/destroy'

  root 'home#index'
  resources :boards
  resources :comments, only: %i[create destroy]
  resources :users, only: %i[new create]
end