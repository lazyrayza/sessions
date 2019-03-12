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

ActiveRecord::Schema.define(version: 2019_03_12_113532) do

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
    t.string "status", default: "Pending"
    t.text "description"
    t.bigint "chat_rooms_id"
    t.string "state"
    t.integer "amount_cents", default: 0, null: false
    t.jsonb "payment"
    t.index ["chat_rooms_id"], name: "index_bookings_on_chat_rooms_id"
    t.index ["client_id"], name: "index_bookings_on_client_id"
    t.index ["therapist_id"], name: "index_bookings_on_therapist_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.bigint "booking_id"
    t.index ["booking_id"], name: "index_chat_rooms_on_booking_id"
  end

  create_table "languages", force: :cascade do |t|
    t.string "language_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "messages", force: :cascade do |t|
    t.string "content"
    t.bigint "chat_room_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_messages_on_chat_room_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "description"
    t.bigint "booking_id"
    t.bigint "client_id"
    t.bigint "therapist_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "rating"
    t.index ["booking_id"], name: "index_reviews_on_booking_id"
    t.index ["client_id"], name: "index_reviews_on_client_id"
    t.index ["therapist_id"], name: "index_reviews_on_therapist_id"
  end

  create_table "user_languages", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["language_id"], name: "index_user_languages_on_language_id"
    t.index ["user_id"], name: "index_user_languages_on_user_id"
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
    t.string "expertise"
    t.bigint "booking_id"
    t.string "photo"
    t.boolean "therapist"
    t.bigint "review_id"
    t.float "latitude"
    t.float "longitude"
    t.string "gender"
    t.text "bio"
    t.integer "price_cents", default: 0, null: false
    t.index ["booking_id"], name: "index_users_on_booking_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["review_id"], name: "index_users_on_review_id"
  end

  add_foreign_key "bookings", "chat_rooms", column: "chat_rooms_id"
  add_foreign_key "bookings", "users", column: "client_id"
  add_foreign_key "bookings", "users", column: "therapist_id"
  add_foreign_key "chat_rooms", "bookings"
  add_foreign_key "messages", "chat_rooms"
  add_foreign_key "messages", "users"
  add_foreign_key "reviews", "bookings"
  add_foreign_key "reviews", "users", column: "client_id"
  add_foreign_key "reviews", "users", column: "therapist_id"
  add_foreign_key "user_languages", "languages"
  add_foreign_key "user_languages", "users"
end
