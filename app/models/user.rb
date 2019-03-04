class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :therapist_bookings, class_name: :Booking, foreign_key: "therapist_id", dependent: :destroy
  has_many :client_bookings, class_name: :Booking, foreign_key: "client_id", dependent: :destroy
  has_many :reviews, class_name: :Review, foreign_key: "therapist_id", through: :bookings
  has_many :chat_room_participations
  has_many :chat_rooms, through: :chat_room_participations
  has_many :requests
end
