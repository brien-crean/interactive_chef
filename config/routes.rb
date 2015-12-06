Rails.application.routes.draw do

  root 'recipes#index'
  resources :recipes
  resources :users, only: [:new, :create]
end
