Rails.application.routes.draw do

  root 'recipes#index'
  resources :recipes
  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

end
