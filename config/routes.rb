Rails.application.routes.draw do
  

  resources :issues
  resources :items
  resources :categories
  resources :brands
  resources :employees
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'issues#index'
end
