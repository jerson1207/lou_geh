Rails.application.routes.draw do
  root 'item_inventories#index'
  get 'about', to: 'pages#about'
  
  namespace :admin do
    resources :admin_user
    resources :users
    resources :sale_transaction
    resources :products
    resources :items
    resources :supply_delivers
    resources :customers
    resources :companies
    resources :item_inventories
    
    root to: "users#index"
  end
  
  devise_for :users
  resources :item_inventories
  resources :customers
  resources :products
  resources :companies
  
  resources :sale_transactions do 
    resources :sold_items
  end
 
  resources :supply_delivers do
    resources :items
  end
  
  
  
  
end
