Rails.application.routes.draw do
  get '/api/v1/posts', to: 'posts#index'
  get '/api/v1/posts/:id', to: 'posts#show'
  post '/api/v1/posts/', to: 'posts#create'
  put '/api/v1/posts/:id', to: 'posts#update'
  delete '/api/v1/posts/:id', to: 'posts#destroy'
  root to: "home#index"
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
