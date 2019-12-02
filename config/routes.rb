Rails.application.routes.draw do
  devise_for :users

  root "menus#index"
  resources :menus, only: [:index, :show] do
    resources :boxlunches, only: [:index, :show]
  end
  resources :single_menus, only: [:index, :show]
  resources :drink_menus, only: [:index, :show]
  resources :reservations, only: [:index, :show]
  resources :information, only: :index
  resources :accesses, only: :index
end
