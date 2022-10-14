Rails.application.routes.draw do
  get 'splash/index'
  devise_for :users
  resources :categories do
    resources :payments, only: [:index, :new]
  end
  resources :payments, only: [:show, :edit, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "splash#index"
end
