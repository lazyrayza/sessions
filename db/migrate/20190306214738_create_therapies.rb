class CreateTherapies < ActiveRecord::Migration[5.2]
  def change
    create_table :therapies do |t|
      t.string :name

      t.timestamps
    end
  end
end
