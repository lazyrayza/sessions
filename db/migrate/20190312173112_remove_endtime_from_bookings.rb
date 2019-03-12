class RemoveEndtimeFromBookings < ActiveRecord::Migration[5.2]
  def change
    remove_column :bookings, :end_time
    change_column :bookings, :start_time, :string
  end
end
