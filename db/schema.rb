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

ActiveRecord::Schema.define(version: 20140901033126) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "averages", force: true do |t|
    t.string   "day_of_week"
    t.integer  "hour_created"
    t.float    "surge_multiplier"
    t.integer  "price_query_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "price_queries", force: true do |t|
    t.float    "start_latitude"
    t.float    "start_longitude"
    t.float    "end_latitude"
    t.float    "end_longitude"
    t.string   "city"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nickname"
    t.string   "start_address"
    t.string   "end_address"
  end

  create_table "price_results", force: true do |t|
    t.string   "localized_display_name"
    t.string   "low_estimate"
    t.string   "display_name"
    t.string   "product_id"
    t.float    "surge_multiplier"
    t.string   "estimate"
    t.string   "high_estimate"
    t.integer  "price_query_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "currency_code"
    t.string   "day_of_week"
    t.integer  "hour_created"
  end

end
