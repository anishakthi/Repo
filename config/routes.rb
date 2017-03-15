Rails.application.routes.draw do
  get 'inventory/load'

  resources :employees

  root 'inventory#load'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
