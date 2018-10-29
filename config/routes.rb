Rails.application.routes.draw do

  root 'products#index'

  get 'products/filter', to: 'products#filter'

  post 'comments', to: 'comments#create'

  resources :products
end
