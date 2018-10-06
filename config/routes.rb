Rails.application.routes.draw do
  root'admins#index'
  resources :sessions
  resources :users
  resources :inquiries
  resources :houses
  resources :realestatecompanies
  resources :househunters
  resources :realtors
  resources :admins
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  get 'signup' => 'users#new'
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
