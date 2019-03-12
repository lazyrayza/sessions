class User < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  monetize :price_cents

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  has_many :therapist_bookings, class_name: :Booking, foreign_key: "therapist_id", dependent: :destroy
  has_many :client_bookings, class_name: :Booking, foreign_key: "client_id", dependent: :destroy
  has_many :therapist_reviews, class_name: :Review, foreign_key: "therapist_id"
  has_many :reviews
  has_many :chat_rooms, through: :bookings
  has_many :messages, through: :chat_rooms, dependent: :destroy
  has_many :user_languages, dependent: :destroy
  has_many :languages, through: :user_languages

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
