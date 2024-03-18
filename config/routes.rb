Rails.application.routes.draw do

  root 'pages#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  get 'index', to: 'pages#index'
  get 'about', to: 'pages#about'
  # Defines the root path route ("/")
  # root "posts#index"
 
 
  resources :users, only: [:index, :show] do
      get 'posts', to: 'posts#index'
      get 'comments', to: 'comments#index'
      collection do
        get 'search'
      end
   end

  #resources :users, only: [:index, :show]
end
