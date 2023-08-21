Rails.application.routes.draw do
  mount Avo::Engine, at: Avo.configuration.root_path

  devise_for :users
  devise_for :admins

  root to: "pages#home"

  namespace :admin do
    get 'promote/:id', to: 'admin#promote_to_admin', as: :promote_to_admin
    get 'ad_admin', to: 'admin#add_admin'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contact_forms, only: [:new, :create]
  resources :blog_posts, only: [:show]
end
