Rails.application.routes.draw do
  devise_for :users
  # root to: 'pages#home'
  root to: 'animations#index'
    resources :animations do
      resources :bookings, only: [ :show, :new, :create ]
      resources :reviews, only: [ :new, :create ]
    end
    resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
