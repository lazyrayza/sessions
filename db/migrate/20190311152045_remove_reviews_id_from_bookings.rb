class RemoveReviewsIdFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :reviews_id
  end
end
