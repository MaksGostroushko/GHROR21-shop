Rails.application.routes.draw do
  root "products#index"
  # resources :categories do
  #   resources :products
  # end
  resources :categories
  resources :products
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
