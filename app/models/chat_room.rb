class ChatRoom < ApplicationRecord
  has_many :chatroom_participants
  has_many :users, through: :chatroom_participants
  has_many :requests
  has_many :messages, dependent: :destroy
end
