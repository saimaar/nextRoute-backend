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

ActiveRecord::Schema.define(version: 2020_02_12_192004) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_joiners", force: :cascade do |t|
    t.bigint "bucketlist_id", null: false
    t.bigint "destination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bucketlist_id"], name: "index_add_joiners_on_bucketlist_id"
    t.index ["destination_id"], name: "index_add_joiners_on_destination_id"
  end

  create_table "bucketlists", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_bucketlists_on_user_id"
  end

  create_table "destinations", force: :cascade do |t|
    t.string "name"
    t.string "bio"
    t.string "photo"
    t.string "trip_type"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.string "comment"
    t.integer "rating"
    t.bigint "user_id", null: false
    t.bigint "destination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["destination_id"], name: "index_reviews_on_destination_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "things_to_dos", force: :cascade do |t|
    t.string "bio"
    t.string "photo"
    t.bigint "destination_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.index ["destination_id"], name: "index_things_to_dos_on_destination_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "picture"
    t.string "bio"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "add_joiners", "bucketlists"
  add_foreign_key "add_joiners", "destinations"
  add_foreign_key "bucketlists", "users"
  add_foreign_key "reviews", "destinations"
  add_foreign_key "reviews", "users"
  add_foreign_key "things_to_dos", "destinations"
end
