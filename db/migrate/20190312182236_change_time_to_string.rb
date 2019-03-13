class ChangeTimeToString < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :start_time, :string
  end
end
