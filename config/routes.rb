Contracting::Application.routes.draw do
  root :to => 'assets#index'
  get 'static/index'
end