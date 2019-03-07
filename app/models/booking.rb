class Booking < ApplicationRecord
  belongs_to :therapist, class_name: :User, foreign_key: 'therapist_id'
  belongs_to :client, class_name: :User, foreign_key: 'client_id'
  validates :start_time, presence: true
  validate :end_time_cannot_be_in_the_past
  validates :description, presence: true

  monetize :amount_cents
  def end_time_cannot_be_in_the_past
    if end_time.present? && end_time < Date.today
      errors.add(:end_date, "can't be in the past")
    end
  end
end
