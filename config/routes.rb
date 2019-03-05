Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :users do
    resources :bookings, only: [:new, :create]
    resources :reviews, except: [:destroy, :edit, :update]
  end
  resources :chat_room
  resources :chatroom_participants
  get "/profile", to: "pages#profile"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
