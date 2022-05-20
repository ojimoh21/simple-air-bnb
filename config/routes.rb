Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'houses#index'
  resources :houses do
    resources :reviews, only: [:new, :create]
  end
end
