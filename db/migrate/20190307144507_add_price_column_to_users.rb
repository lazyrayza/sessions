class AddPriceColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :price, :string, default: "£0"
  end
end
