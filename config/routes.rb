Rails.application.routes.draw do
  resources :inquiries
  resources :houses
  resources :realestatecompanies
  resources :househunters
  resources :realtors
  resources :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root'admins#index'
  #get "/pages/:page" => "pages#show"
  #root "pages#show", page: "home"
  get 'houses/search' => 'houses#search', as: 'search_houses'
end
