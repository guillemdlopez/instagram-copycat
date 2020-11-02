Rails.application.routes.draw do
  devise_for :users
  get '/users', to: 'pages#index'
  root to: 'pages#home'

  get '/dashboard', to: 'posts#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :posts, except: [:index] do
    resources :comments, only: [:new, :create]
  end
  resources :comments, only: [:edit, :update, :destroy]

  resources :users, only: [:index] do
    member do
      post :follow
      post :unfollow
    end
  end
  # ROUTE TO THE USER'S PROFILE
  get ':username', to: 'profiles#show', as: :profile
end
