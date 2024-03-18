Rails.application.routes.draw do

  root 'pages#index'
  get "up" => "rails/health#show", as: :rails_health_check
  get 'index', to: 'pages#index'
  get 'about', to: 'pages#about'
 
 
  resources :users, only: [:index, :show] do
      get 'posts', to: 'posts#index'
      get 'comments', to: 'comments#index'
      collection do
        get 'search'
      end
   end

end
