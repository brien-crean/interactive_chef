Rails.application.routes.draw do

  root 'recipes#index'
  resources :recipes do
    resources :comments, only: [:new, :create]
  end

  resources :presentations, only: [:show]

  resources :users, only: [:new, :create]

  resources :sessions, only: [:new, :create] do
    delete :destroy, on: :collection
  end

  resources :scrape_recipes, only: [:index, :new, :create, :show]

end
