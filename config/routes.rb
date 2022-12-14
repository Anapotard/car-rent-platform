Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars, only: [:show, :index, :new, :create] do
    resources :bookings, only: [:new, :create, :edit, :update]
    resources :reviews
  end
  resources :bookings, only: [ :destroy, :index, :show]
end
