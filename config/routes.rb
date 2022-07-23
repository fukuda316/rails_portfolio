Rails.application.routes.draw do
  root 'top#index'
  get 'login', to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  post '/guest_login', to: 'sessions#guest_login'
  get 'sessions/new'
  get "signup" => "users#new"
  post "users/create" => "users#create"
  get 'users/create'
  get "users/:id" => "users#show"
  get 'posts/index'
  get 'posts/create'
  get 'top/index'
  get 'reviews/post/:id' => "reviews#post"
  get 'shops/index'
  resources :shops
  resources :reviews
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
