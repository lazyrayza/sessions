class Chatroom < ApplicationRecord
  has_many :chatroom_participants
  has_many :users, through: :chatroom_participants
  has_many :requests
end
