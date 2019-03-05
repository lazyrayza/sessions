Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end
  
  root to: 'reviews#index'

  resources :users do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create, :show]
  end
  
  resources :reviews, only: [:show]
  resources :request
  resources :chat_room
  resources :chatroom_participants
end
