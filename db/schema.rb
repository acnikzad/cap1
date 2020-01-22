# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_01_22_172244) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alerts", force: :cascade do |t|
    t.integer "dog_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "latitude"
    t.integer "longitude"
    t.string "dog_name"
    t.string "owner_name"
    t.integer "contact_number"
    t.string "address"
    t.string "breed"
    t.string "color"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "name"
    t.string "color"
    t.string "breed"
    t.integer "age"
    t.integer "weight"
    t.string "behavior_traits"
    t.string "image_url"
    t.integer "user_id"
    t.float "latitude"
    t.float "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "bio"
    t.string "address"
    t.integer "gps_id"
    t.string "ping_time"
    t.integer "battery"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "last_name"
    t.integer "phone_number"
    t.string "home_address"
    t.string "image_url"
  end

end
