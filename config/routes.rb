SampleApp::Application.routes.draw do
  resources :users
  resources :sessions, only: [:new, :create, :destroy]

  root 'static_pages#home'
  
  match '/help', to: 'static_pages#help', via: 'get'
  match '/about', to: 'static_pages#about', via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'

  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
  
  match '/edit', to: 'users#edit', via: 'get'

  get "fuzzybunnies/", to: "static_pages#home"

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  
  end
