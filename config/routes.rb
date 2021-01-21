Rails.application.routes.draw do
  get 'orders/show'
  devise_for :users
  # devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "products#index"
  resources :categories
  resources :products do
    get :search, on: :collection
  end
  resources :products do
    resources :carts, only: %i[create update destroy] do
      member do
        get 'add_quantity'
        get 'remove_quantity'
      end
    end
  end
  resources :orders, only: :show
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
