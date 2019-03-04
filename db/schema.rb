# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_03_04_174129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.bigint "client_id"
    t.bigint "therapist_id"
    t.boolean "accepted", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "status", default: false
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["therapist_id"], name: "index_bookings_on_therapist_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chatroom_participants", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "chat_room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_chatroom_participants_on_chat_room_id"
    t.index ["user_id"], name: "index_chatroom_participants_on_user_id"
  end

  create_table "requests", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "chat_room_id"
    t.boolean "accepted"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_requests_on_chat_room_id"
    t.index ["user_id"], name: "index_requests_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.bigint "therapist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["therapist_id"], name: "index_reviews_on_therapist_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.text "address"
    t.string "phone_number"
    t.string "languages"
    t.string "expertise"
    t.text "bookings"
    t.string "photo"
    t.boolean "therapist"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "chatroom_participants", "chat_rooms"
  add_foreign_key "chatroom_participants", "users"
  add_foreign_key "requests", "chat_rooms"
  add_foreign_key "requests", "users"
end
