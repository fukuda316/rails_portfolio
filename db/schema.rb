# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2022_05_15_014127) do

  create_table "prefectures", charset: "utf8mb4", force: :cascade do |t|
    t.string "prefecture"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", charset: "utf8mb4", force: :cascade do |t|
    t.bigint "shop_id", null: false
    t.text "body"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.boolean "private_room"
    t.float "next_seat_distance"
    t.boolean "disinfection"
    t.float "mask_customer"
    t.float "mask_staff"
    t.float "measures_staff"
    t.index ["shop_id"], name: "index_reviews_on_shop_id"
  end

  create_table "shops", charset: "utf8mb4", force: :cascade do |t|
    t.text "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image_name"
    t.string "location"
    t.string "genre"
    t.string "price"
    t.string "opening_hours"
    t.boolean "private_room"
    t.string "introduction"
    t.integer "prefecture"
  end

  create_table "users", charset: "utf8mb4", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "prefecture"
  end

  add_foreign_key "reviews", "shops"
end
