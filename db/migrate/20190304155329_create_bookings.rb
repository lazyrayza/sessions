class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :start_time
      t.datetime :end_time
      t.references :client
      t.references :therapist
      t.boolean :accepted, default: false
      t.timestamps
    end
    add_foreign_key :bookings, :users, column: :client_id, primary_key: :id
    add_foreign_key :bookings, :users, column: :therapist_id, primary_key: :id
  end
end
