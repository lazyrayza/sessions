class DropLanguagesFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :languages
  end
end
