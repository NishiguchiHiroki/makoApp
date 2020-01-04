Rails.application.routes.draw do
  devise_for :users
  
  resources :signup do
    collection do
      get 'step1'
      get 'step2'
      post 'step2'
      get 'step3'
      post 'step3'
      get 'done'
      post 'done'
    end
  end

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
