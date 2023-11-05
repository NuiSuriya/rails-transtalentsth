Rails.application.routes.draw do
  authenticate :user, -> user { user.admin? } do
    mount Avo::Engine, at: Avo.configuration.root_path
  end
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  devise_for :admins

  root to: "pages#home"

  namespace :admin do
    get 'promote/:id', to: 'admin#promote_to_admin', as: :promote_to_admin
    get 'add_admin', to: 'admin#add_admin'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get 'aboutus', to: 'pages#about_us'
  get 'contact_us', to: 'pages#contact_us'
  get 'services/consulting', to: 'services#consulting'
  get 'services/training', to: 'services#training'
  get 'services/speakers', to: 'services#speakers'

  resources :contact_forms, only: [:new, :create]
  resources :blog_posts, only: [:index, :show]
  resources :news_posts, only: [:index, :show]
end
