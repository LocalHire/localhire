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

ActiveRecord::Schema.define(version: 2018_11_06_211638) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.date "date"
    t.integer "price"
    t.bigint "item_id"
    t.bigint "user_id"
    t.bigint "lender_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_bookings_on_item_id"
    t.index ["lender_id"], name: "index_bookings_on_lender_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "borrowers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.text "bio"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_borrowers_on_account_id"
    t.index ["user_id"], name: "index_borrowers_on_user_id"
  end

  create_table "conversations", force: :cascade do |t|
    t.integer "sender_id"
    t.integer "recipient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_payments", force: :cascade do |t|
    t.string "payment_number"
    t.string "status"
    t.date "date"
    t.integer "cost"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_item_payments_on_account_id"
    t.index ["booking_id"], name: "index_item_payments_on_booking_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.text "instructions"
    t.integer "price_per_hour"
    t.integer "max_hours_per_hire"
    t.integer "price_per_day"
    t.integer "max_days_per_hire"
    t.integer "price_per_week"
    t.integer "max_weeks_per_hire"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "per_hour_availability"
    t.string "per_day_availability"
    t.string "per_week_availability"
    t.integer "user_id"
    t.bigint "lender_id"
    t.integer "views", default: 0
    t.string "street"
    t.string "city"
    t.string "state"
    t.string "postcode"
    t.float "latitude"
    t.float "longitude"
    t.string "suburb"
    t.index ["lender_id"], name: "index_items_on_lender_id"
  end

  create_table "lenders", force: :cascade do |t|
    t.integer "phone"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_lenders_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "body"
    t.bigint "conversation_id"
    t.bigint "user_id"
    t.boolean "read", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conversation_id"], name: "index_messages_on_conversation_id"
    t.index ["user_id"], name: "index_messages_on_user_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.string "title"
    t.datetime "start"
    t.datetime "end"
    t.bigint "lender_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.index ["account_id"], name: "index_schedules_on_account_id"
    t.index ["item_id"], name: "index_schedules_on_item_id"
    t.index ["lender_id"], name: "index_schedules_on_lender_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string "keywords"
    t.string "hireplan"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "minprice"
    t.integer "maxprice"
    t.integer "duration"
    t.string "suburb"
    t.integer "arearange"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "account_id"
    t.bigint "lender_id"
    t.bigint "borrower_id"
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.boolean "admin"
    t.index ["account_id"], name: "index_users_on_account_id"
    t.index ["borrower_id"], name: "index_users_on_borrower_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "items"
  add_foreign_key "bookings", "lenders"
  add_foreign_key "bookings", "users"
  add_foreign_key "items", "lenders"
  add_foreign_key "lenders", "users"
end
