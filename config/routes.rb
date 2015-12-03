Rails.application.routes.draw do
  resources :notifications
  resources :iaps
  resources :villages
  resources :titles
  resources :forums
  resources :guilds
  resources :world_configurations
  resources :worlds
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
