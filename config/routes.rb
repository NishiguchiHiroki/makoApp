Rails.application.routes.draw do
  devise_for :users
  
  resources :signup do
    collection do
      get 'step1'
      post 'step1'
      get 'step2'
      post 'step2',    to:'signup#save_to_session_step1'
      get 'step3'
      post 'step3',   to:'signup#save_to_session_step2'
      get 'done'
      post 'done',    to:'signup#save_to_session_step3'
    end
  end

  root "menus#new"

  resources :mypages do
    member do
      get "logout"
      get "profile"
      get "userinfo"
    end
  end
  
  resources :boxlunches, only: [:new]
  resources :single_menus, only: [:new]
  resources :drink_menus, only: [:new]
  resources :reservations, only: [:new]

  resources :menus, only: [:new, :show]  do
    scope module: :menus do
      resources :carts, only: [:create, :destroy]
    end
  end

  resources :information, only: [:index, :show]
  resources :accesses, only: :index
  resources :carts, only: [:show]
  resources :orders, only: [:show]
end
