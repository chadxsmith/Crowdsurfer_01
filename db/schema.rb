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

ActiveRecord::Schema.define(version: 20141108192202) do

  create_table "genre_locations", force: true do |t|
    t.integer "location_id",  null: false
    t.integer "sub_genre_id", null: false
  end

  create_table "genres", force: true do |t|
    t.string "genre", null: false
  end

  create_table "locations", force: true do |t|
    t.string  "city",               null: false
    t.string  "state",    limit: 2, null: false
    t.integer "zip_code"
  end

  create_table "sub_genres", force: true do |t|
    t.string  "sub_genre_names"
    t.integer "genre_id"
  end

  create_table "venue_rankings", force: true do |t|
    t.integer "venue_id"
    t.integer "location_id"
    t.float   "rating"
    t.integer "count"
  end

  create_table "venues", force: true do |t|
    t.string  "venue_name",             null: false
    t.string  "address"
    t.string  "city"
    t.string  "country_code", limit: 3
    t.integer "postal_code"
    t.string  "state_code"
  end

end
