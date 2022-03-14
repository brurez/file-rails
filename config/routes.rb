Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  get 'logout', to: 'sessions#destroy'

  resources :users
  resources :image_posts

  # Defines the root path route ("/")
  root "pages#index"
end
