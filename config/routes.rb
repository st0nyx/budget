Rails.application.routes.draw do
  resources :costs
  resources :cost_categories
  # resources :shoppings
  resources :expenses
  resources :kinds
  resources :stores
  devise_for :users
  root to: 'home#index'
  get 'home/report'

  resources :shoppings do
    member do
      get :toggle_status
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
