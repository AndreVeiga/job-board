Rails.application.routes.draw do
  root to: "jobs#premium"
  resources :jobs
  get 'hello/world'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
