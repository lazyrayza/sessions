class DropPriceFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :price
  end
end
