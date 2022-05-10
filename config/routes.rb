Rails.application.routes.draw do
   

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root "formularios#index"
  resources :formularios
    # Routes Search
    get '/search' => 'searchs#index', as: :searchs
    get '/search' => 'searchs#search', as: :search
end
