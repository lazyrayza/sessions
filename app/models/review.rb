class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking
  validates :description, presence: true
end
