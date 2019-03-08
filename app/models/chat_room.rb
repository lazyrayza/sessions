class ChatRoom < ApplicationRecord
  has_many :users, through: :chatroom_participants
  has_many :messages, dependent: :destroy
  belongs_to :booking, optional: true
end
