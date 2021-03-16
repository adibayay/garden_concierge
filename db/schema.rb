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

ActiveRecord::Schema.define(version: 2021_03_16_000210) do

  create_table "companions", force: :cascade do |t|
    t.integer "plant_id"
    t.integer "companion_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gardens", force: :cascade do |t|
    t.integer "user_id"
    t.integer "plant_id"
    t.date "last_frost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "grow_dates", force: :cascade do |t|
    t.integer "plant_id"
    t.boolean "outdoor_only"
    t.integer "early_indoor"
    t.integer "late_indoor"
    t.integer "early_outdoor"
    t.integer "late_outdoor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plants", force: :cascade do |t|
    t.string "name"
    t.string "plant_type"
    t.string "sun_exposure"
    t.string "planting_depth"
    t.string "height"
    t.string "spacing"
    t.string "grow_tip"
    t.string "video_url"
    t.string "image_url"
    t.string "maturity"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
