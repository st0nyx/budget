Rails.application.routes.draw do
  resources :shoppings
  resources :expenses
  resources :kinds
  resources :stores
  devise_for :users
  root to: 'home#index'
  get 'home/report'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
