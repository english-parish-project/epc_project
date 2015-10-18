# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20151013154114) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "churches", force: :cascade do |t|
    t.text     "name"
    t.string   "date_first_mention_in_text"
    t.text     "first_mention_description"
    t.string   "date_earliest_extant_fabric"
    t.boolean  "ds_earliest_extant_fabric"
    t.text     "earliest_extant_fabric_description"
    t.text     "general_narrative"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

end
