Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  root to: 'reviews#index'

  resources :users do
    resources :bookings, only: [:new, :create]
    resources :reviews, only: [:new, :create, :show]
  end
  resources :reviews, only: [:show]
  resources :request
  resources :chat_room
  resources :chatroom_participants

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
