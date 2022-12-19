Rails.application.routes.draw do
  resources :photos





  root "eventz#index"

  resources :maps
  resources :events
  resources :siaxles

  resource :session, only: [:new, :create, :destroy]

  resources :users
  get "signup" => "users#new"
  get "signin" => "sessions#new"

end
