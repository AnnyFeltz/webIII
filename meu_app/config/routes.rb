Rails.application.routes.draw do
  devise_for :users
  resources :comments
  resources :posts
  
  get "/path", to: "comments#create"

  get "up" => "rails/health#show", as: :rails_health_check
end