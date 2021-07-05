Rails.application.routes.draw do
  resources :users, only: :create
  resources :books
  resources :comments, only: :index
  resources :friendships
  post '/auth/login', to: 'authentication#login'
  get '/auth/verify', to: 'authentication#verify'
  put '/comments/:comment_id/books/:id', to: 'books#add_comment'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
