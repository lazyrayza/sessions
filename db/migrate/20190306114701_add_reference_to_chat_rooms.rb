class AddReferenceToChatRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :chat_rooms, :booking, foreign_key: true

  end
end
