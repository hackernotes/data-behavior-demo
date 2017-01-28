Rails.application.routes.draw do
  root to: 'products#show', id: 1
  resources :products
  resources :orders
  resources :line_items
end
