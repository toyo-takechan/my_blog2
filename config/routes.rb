Rails.application.routes.draw do
  
  get 'home/index'
  # root to: 'posts#index'
  root to: 'home#index'
  # root to: 'users#index'
  resources :users
  resources :posts

  get    '/signup',  to: 'users#new'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
end
 