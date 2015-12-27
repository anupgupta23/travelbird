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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20151227154225) do

  create_table "cities", :force => true do |t|
    t.integer "country_id"
    t.text    "places_and_attractions"
  end

  create_table "countries", :force => true do |t|
    t.string "name"
    t.string "continent"
  end

  create_table "tours", :force => true do |t|
    t.string "name"
    t.float  "duration_in_days"
    t.float  "budget"
    t.text   "weblinks"
    t.text   "details"
  end

  create_table "tours_cities", :force => true do |t|
    t.string "tour_id"
    t.float  "city_id"
  end

end