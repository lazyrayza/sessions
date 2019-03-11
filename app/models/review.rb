class Review < ApplicationRecord
belongs_to :therapist, class_name: :User, foreign_key: 'therapist_id'
  belongs_to :client, class_name: :User, foreign_key: 'client_id'
    belongs_to :booking
  validates :description, presence: true
end
