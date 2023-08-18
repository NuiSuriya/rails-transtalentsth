Rails.application.routes.draw do
  get 'contact_forms/new'
  get 'contact_forms/create'
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contact_forms, only:[:new, :create]
end
