Rails.application.routes.draw do
  root   'microposts#show'
  get    '/signup',   to: 'users#new'
  post   '/signup',   to: 'users#create'
  get    '/login',    to: 'sessions#new'
  post   '/login',    to: 'sessions#create'
  delete '/logout',   to: 'sessions#destroy'
  get    '/timeline', to: 'microposts#show'
  get    '/micropost',to: 'microposts#new'
  resources :users
  resources :microposts,          only: [:create, :destroy]

end
