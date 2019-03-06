Rails.application.routes.draw do
 devise_for :users
 root to: 'pages#home'

  resources :users, only: [:show, :index] do
    resources :reviews, except: [:destroy, :edit, :update]
    resources :bookings, only: [:new, :create]
  end
  resources :reviews, only: [:show]
  resources :request
  resources :chatroom_participants
  resources :chat_rooms, only: [ :show, :destroy ]  do
    resources :messages, only: [ :create ]
  end
  resources :bookings, except: [:new, :create] do
      resources :chat_rooms, only: [:new, :create]
    end

  get "/profile", to: "pages#profile"


end

