Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root to: "static#home"

  resources :sessions, only: [:create]
  resources :users, only: [:create]
  delete :logout, to: "sessions#logout"
  get :logged_in, to: "sessions#logged_in"

  resources :recipes, only: [:create]
  get 'show/:id', to: 'recipes#show'
  get 'recipes/index'


end
