Rails.application.routes.draw do
  root 'pages#home'

  resources :cars

  get 'new_cars', to: 'cars#index'
  get 'contact', to: 'pages#contact'
end
