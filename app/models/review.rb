class Review < ApplicationRecord
  belongs_to :therapist, class_name: :User, foreign_key: "therapist_id"
  validates :description, presence: true
end
