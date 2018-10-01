Rails.application.routes.draw do
  resources :inquiries
  resources :houses
  resources :realestatecompanies
  resources :househunters
  resources :realtors
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'admins#index'
end
