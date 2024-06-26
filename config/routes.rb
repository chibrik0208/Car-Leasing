Rails.application.routes.draw do
  root 'pages#home'

  resources :cars do
    collection do
      get 'page/:page', action: :index, as: 'page'
    end
  end

  get '/new_cars', to: 'cars#index', category: 'NEW'
  get '/pre-owned_cars', to: 'cars#index', category: 'PRE_OWNED'
  get '/cars/:category/:body_type', to: 'cars#index', as: 'filtered_cars'

  get 'contact', to: 'pages#contact'
end