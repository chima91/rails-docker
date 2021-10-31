Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get 'boards', to: 'boards#index'
  # get 'boards/new', to: 'boards#new'
  # get 'boards/:id', to: 'boards#show'
  # post 'boards', to: 'boards#create'

  # get 'comments/create'
  # get 'comments/destroy'

  resources :boards
  resources :comments, only: %i[create, destroy]
end