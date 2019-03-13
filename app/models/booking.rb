class Booking < ApplicationRecord
  belongs_to :therapist, class_name: :User, foreign_key: 'therapist_id'
  belongs_to :client, class_name: :User, foreign_key: 'client_id'
  has_many :reviews
  validates :start_time, presence: true
  validates :description, presence: true
  monetize :amount_cents
end
