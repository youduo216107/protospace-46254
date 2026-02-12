Rails.application.routes.draw do
  get 'users/show'
  devise_for :users
  resources :users, only: [:show]
  resources :prototypes do
    resources :comments, only: [:create]
  end
  
  root "prototypes#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
