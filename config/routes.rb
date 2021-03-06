Rails.application.routes.draw do
  devise_for :users
  resources :users
  get 'user/:id' => 'user#show'
  resources :books do
    resources :reviews
    collection do
      get :search #new path for search
    end
    collection do
      get :gsearch #new path for gsearch
    end
  end
  root 'books#index'
end
