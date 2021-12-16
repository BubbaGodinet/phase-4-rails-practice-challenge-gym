Rails.application.routes.draw do
  # resources :memberships, only: [:create]
  # resources :clients, only: [:show]
  # resources :gyms, only: [:show, :destroy]
  resources :memberships
  resources :clients
  resources :gyms
end
