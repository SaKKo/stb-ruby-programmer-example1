Rails.application.routes.draw do
  resources :user_books, only: [:create, :destroy]
  resources :books
  resources :users
  get 'users/:user_id/user_books', to: 'user_books#index'
  get 'users/:user_id/books', to: 'books#books_for_user'
end
