Attackresearch::Application.routes.draw do
  
  get "logout" => "sessions#destroy", :as => "logout"
  get "login" => "sessions#new", :as => "login"
  get "signup" => "users#new", :as => "signup"

  # Note: only one root definition can exist
  root :to => "sessions#new"
  
  resources :sessions
  resources :users
  resources :home
end

