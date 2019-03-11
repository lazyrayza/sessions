Rails.application.routes.draw do
   devise_for :users, controllers: { registrations: :registrations }
   root to: 'pages#home'

  resources :users, only: [:show, :index] do
  resources :reviews, only: [:index]

    resources :bookings, only: [:new, :create]
  end
  resources :reviews, only: [:show]
  resources :chat_rooms, only: [ :show, :destroy ]  do
    collection do
      post '/sessions', to: 'video_sessions#create'
      mount ActionCable.server, at: '/cable'
    end
    resources :messages, only: [ :create ]
  end

  resources :bookings, except: [:new, :create] do
      resources :reviews, except: [:destroy, :edit, :update, :show, :index]
      resources :chat_rooms, only: [:new, :create]
    end
   get "/profile", to: "pages#profile"
end
