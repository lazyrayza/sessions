Rails.application.routes.draw do
  get 'tr_profiles/controller'
   devise_for :users, controllers: { registrations: :registrations }
   root to: 'pages#home'


  resources :users, only: [:show, :index] do
    resources :reviews, except: [:destroy, :edit, :update]
    resources :bookings, only: [:new, :create, :show]
     resources :payments, only: [:new, :create]

  end
  resources :tr_profiles, only [:show, :index]
  resources :reviews, only: [:show]
  resources :request
  resources :chatroom_participants
  resources :chat_rooms, only: [ :show, :destroy ]  do
    collection do
      post '/sessions', to: 'video_sessions#create'
      mount ActionCable.server, at: '/cable'
    end
    resources :messages, only: [ :create ]
  end

  resources :bookings, except: [:new, :create] do
      resources :reviews, except: [:destroy, :edit, :update]
      resources :chat_rooms, only: [:new, :create]
    end
   get "/profile", to: "pages#profile"
end
