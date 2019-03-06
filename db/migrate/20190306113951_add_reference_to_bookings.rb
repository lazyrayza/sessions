class AddReferenceToBookings < ActiveRecord::Migration[5.2]
  def change
    add_reference :bookings, :chat_rooms, foreign_key: true
  end
end
