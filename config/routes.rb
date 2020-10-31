Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get '/dashboard', to: 'posts#index'
  get '/profile', to: 'pages#profile'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, except: [:index] do
    resources :comments, only: [:index, :new, :create]
  end

  resources :comments, only: [:delete]
end
