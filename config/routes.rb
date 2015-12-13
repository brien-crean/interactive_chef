Rails.application.routes.draw do

  root 'recipes#index'
  resources :recipes do
    resources :comments, only: [:new, :create]
    resources :presentations, only: [:show]
  end

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :presentations, only: [:index]

end
