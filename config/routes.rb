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

  resources :mypages do
    member do
      get "logout"
      get "profile"
      get "userinfo"
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
