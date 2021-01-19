Rails.application.routes.draw do
  devise_for :users
  # devise_for :users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root "products#index"
  resources :categories
  resources :products do
    get :search, on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
