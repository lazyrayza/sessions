class AddPriceToUsers < ActiveRecord::Migration[5.2]
  def change
    add_monetize :users, :price, currency: { present: false }
  end
end
