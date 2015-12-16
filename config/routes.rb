Rails.application.routes.draw do
  resources :construction_requests
  resources :resources
  resources :scholars
  resources :buildings
  resources :troops
  resources :notifications
  resources :iaps
  resources :villages
  resources :titles
  resources :forums
  resources :guilds
  resources :world_configurations
  resources :worlds
  resources :users
  resources :benchmarks, only: :none do
    collection do
      get :simple
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
