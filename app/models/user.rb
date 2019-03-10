class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :therapist_bookings, class_name: :Booking, foreign_key: "therapist_id", dependent: :destroy
  has_many :client_bookings, class_name: :Booking, foreign_key: "client_id", dependent: :destroy
  has_many :reviews, class_name: :Review, foreign_key: "therapist_id", through: :bookings
  has_many :chat_rooms, through: :chat_room_participations
  has_many :messages, dependent: :destroy

  def full_name
    first_name + " " + last_name
  end

  include PgSearch
  pg_search_scope :search_by_expertise_and_full_name,
                  against: [:first_name, :last_name, :expertise],
                  using: {
                    tsearch: { prefix: true }
                  }
end
