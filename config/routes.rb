Rails.application.routes.draw do
  devise_for :users
  
  get 'home/index'
   

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "formularios#index"
  resources :formularios
    # Routes Search
    get '/search' => 'search#index', as: :searchs
    get '/search' => 'search#search', as: :search

    
    get "formularios/:id" => "formularios#show", as: :formularios_show
end
