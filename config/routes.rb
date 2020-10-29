Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get '/dashboard', to: 'posts#index'
  resources :posts, except: [:index] do
    resources :comments, only: [:index, :new, :create]
  end
end
