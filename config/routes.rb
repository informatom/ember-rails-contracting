Contracting::Application.routes.draw do
  resources :consumable_items

  resources :contract_items

  resources :contracts

  root :to => 'assets#index'
  get 'static/index'
end