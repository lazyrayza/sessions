Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
    resources :reviews, except: [:destroy, :edit, :update]
  end

  resources :reviews, only: [:show]
  resources :request
  resources :chat_room
  resources :chatroom_participants
  get "/profile", to: "pages#profile"
end
