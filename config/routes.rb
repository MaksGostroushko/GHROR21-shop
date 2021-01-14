Rails.application.routes.draw do
  root "products#index"
  # resources :categories, only: :show do
  #   resources :products, only: [:index, :show]
  # end
  resources :categories
  resources :products do
    get 'search', on: :collection
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
