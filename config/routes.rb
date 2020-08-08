Rails.application.routes.draw do
  root to: "home#index"
  resources :sessions, only: [:new, :create, :destroy]
  
  get "signup" => "users#new", as: "signup"
  get 'login' => "sessions#new", as: "login"
  get 'logout' => "sessions#destroy", as: "logout"

  resources :movies_share
  get "*path", to: "errors#index", via: :all
end
