class AddPriceToTherapies < ActiveRecord::Migration[5.2]
  def change
    add_monetize :therapy, :price, currency: { present: false }
  end
end
