class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :description
      t.references :booking, foreign_key: true
      t.references :client
      t.references :therapist

      t.timestamps
    end
    add_foreign_key :reviews, :users, column: :client_id, primary_key: :id
    add_foreign_key :reviews, :users, column: :therapist_id, primary_key: :id
  end
end
