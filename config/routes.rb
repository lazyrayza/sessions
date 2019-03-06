Rails.application.routes.draw do
 devise_for :users
 root to: 'pages#home'

  resources :users, only: [:show, :index] do
    resources :bookings, only: [:new, :create]
    resources :reviews, except: [:destroy, :edit, :update]
  end

   resources :reviews, only: [:show]
   resources :request
   resources :chatroom_participants
   resources :chat_rooms, only: [ :show, :destroy ]  do
    resources :messages, only: [ :create ]
    resources :bookings, except: [:new, :create]
   end
 get "/profile", to: "pages#profile"
end

