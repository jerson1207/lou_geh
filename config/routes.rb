Rails.application.routes.draw do
  root 'item_inventories#index'
  resources :item_inventories
  resources :sale_transactions do 
    resources :sold_items
  end
  resources :supply_delivers do
    resources :items
  end
  resources :customers
  resources :products
  resources :companies
end
