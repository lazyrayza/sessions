Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show] do
    resources :bookings, only: [:new, :create]
    resources :reviews, except: [:destroy, :edit, :update]
  end

  resources :reviews, only: [:show]
  resources :request
  resources :chat_room
  resources :chatroom_participants
end
