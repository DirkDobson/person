Rails.application.routes.draw do
  
  get 'plants/index'
  get 'plants/show'
  get 'plants/new'
  root 'static_pages#home'
  get'/about', to: 'static_pages#about'
  resources :animals
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
