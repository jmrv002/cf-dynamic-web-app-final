Rails.application.routes.draw do
  root 'products#index'
  
  post 'comments', to: 'comments#create'

  get 'login', to: 'auth#login'

  resources :products
end
