Rails.application.routes.draw do
  root 'simple_pages#landing_page'
  
  post 'comments', to: 'comments#create'

  get 'login', to: 'auth#login'

  resources :products
end
