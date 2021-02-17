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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2021_02_17_174614) do
=======
ActiveRecord::Schema.define(version: 2021_02_17_185022) do
>>>>>>> b9f2b0f3efe3d43ac0326965a78b138c3884d78f

  create_table "destinations", force: :cascade do |t|
    t.string "city"
    t.string "attraction"
    t.string "hotel"
    t.string "restaurant"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "language"
    t.string "population"
  end

  create_table "hotels", force: :cascade do |t|
    t.integer "destination_id", null: false
    t.string "rating"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["destination_id"], name: "index_hotels_on_destination_id"
  end

  create_table "itineraries", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "destination_id", null: false
    t.datetime "date_time"
    t.string "note"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_itineraries_on_destination_id"
    t.index ["user_id"], name: "index_itineraries_on_user_id"
  end

<<<<<<< HEAD
  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.string "cuisine"
    t.string "review"
    t.integer "destination_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
=======
  create_table "reviews", force: :cascade do |t|
    t.integer "hotel_id", null: false
    t.text "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["hotel_id"], name: "index_reviews_on_hotel_id"
>>>>>>> b9f2b0f3efe3d43ac0326965a78b138c3884d78f
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "email"
    t.integer "phone_number"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "hotels", "destinations"
  add_foreign_key "itineraries", "destinations"
  add_foreign_key "itineraries", "users"
  add_foreign_key "reviews", "hotels"
end
