Rails.application.routes.draw do
  get 'sessions/new'
  get 'posts/index'
  get 'posts/new'
  get 'posts/create'
  get 'posts/update'
  get 'posts/destroy'
  root to: 'users#index'
  resources :users
  resources :posts
end
