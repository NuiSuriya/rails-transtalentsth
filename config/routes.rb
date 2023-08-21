Rails.application.routes.draw do
  devise_for :admins
  devise_for :users
  mount Avo::Engine, at: Avo.configuration.root_path

  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contact_forms, only: [:new, :create]
  resources :blog_posts, only: [:show]
end
