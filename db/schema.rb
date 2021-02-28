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

ActiveRecord::Schema.define(version: 2021_02_28_081154) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "nears", force: :cascade do |t|
    t.bigint "prop_id"
    t.string "station_name"
    t.string "line_name"
    t.integer "minutes_foot"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prop_id"], name: "index_nears_on_prop_id"
  end

  create_table "props", force: :cascade do |t|
    t.string "name"
    t.integer "rent"
    t.text "address"
    t.integer "age"
    t.text "remarks"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "nears", "props"
end
