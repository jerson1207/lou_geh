Rails.application.routes.draw do
  resources :supply_delivers do
    resources :items
  end
  resources :customers
  resources :products
  resources :companies
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
