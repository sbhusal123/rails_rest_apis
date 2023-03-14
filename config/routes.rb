Rails.application.routes.draw do
  # resources :books, only: :index
  resources :books, only: [:index, :create, :destroy]
end
