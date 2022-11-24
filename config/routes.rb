Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "static#home"

  resources :sessions, only: [:create]
  resources :users, only: [:create]
  resources :recipes, only: [:create]
  resources :comments, only: [:create]

  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  get 'recipes/index'
  get 'comments/index'
 

  get 'show/:id', to: 'recipes#show'
 


end
