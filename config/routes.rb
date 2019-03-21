Rails.application.routes.draw do
  devise_for :users
  resources :books do
    resources :reviews
    collection do
      get :search #new path for search
    end
  end
  root 'books#index'
end
