Amazon::Application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  root to: 'products#index'

  resources :users
  resources :products
  resources :carts
  resources :sessions
  resources :product_uploads
end
