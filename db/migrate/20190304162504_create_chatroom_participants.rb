class CreateChatroomParticipants < ActiveRecord::Migration[5.2]
  def change
    create_table :chatroom_participants do |t|
      t.references :user, foreign_key: true
      t.references :chat_room, foreign_key: true
      t.timestamps
    end
  end
end