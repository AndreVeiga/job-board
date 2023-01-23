Rails.application.routes.draw do
  root to: "jobs#premium"
  resources :jobs do
    post "comments", to: "comments#create"
  end

  get 'hello/world'

  delete 'comments/:id', to: "comments#destroy", as: :comment

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
