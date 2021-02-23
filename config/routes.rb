Rails.application.routes.draw do
  
  get 'home/index'
  # root to: 'posts#index'
  root to: 'home#index'
  # root to: 'users#index'
  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'

  resources :users
  resources :account_activations, only: [:edit]
  resources :posts

end
 