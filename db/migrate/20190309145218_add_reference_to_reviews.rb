class AddReferenceToReviews < ActiveRecord::Migration[5.2]
  def change
        add_reference :bookings, :reviews, foreign_key: true

  end
end
