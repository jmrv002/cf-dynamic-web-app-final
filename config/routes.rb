Rails.application.routes.draw do
  root 'products#index'
  
  post 'comments', to: 'comments#create'

  resources :products
end
