Hackme::Application.routes.draw do
  resources :users
  resources :sessions
  resources :posts

  get "signup" => "users#new", :as => "signup"
  get "login" => "sessions#new", :as => "login"
  get "logout" => "sessions#destroy", :as => "logout"

  root :to => "posts#index"
end
