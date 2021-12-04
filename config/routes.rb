Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :products, only:[:index, :show]
  resources :categories, only:[:index, :show]
  resources :accessories, only:[:index, :show]
  resources :orders, only:[:index, :show, :create]
  resources :addresses, only:[:create, :destroy]
  resources :reviews, only:[:create, :index]
  
  
  post "/signup", to: "users#create"
  get "/me" , to: "users#show"
  get "/users" , to: "users#index"
  patch "/update/:id", to: "users#update"

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"

  
  
end
