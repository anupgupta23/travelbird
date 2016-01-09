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

ActiveRecord::Schema.define(:version => 20160109155424) do

  create_table "attractions", :force => true do |t|
    t.string  "name"
    t.integer "city_id"
    t.float   "price"
    t.string  "start_time"
    t.string  "end_time"
    t.string  "closed_on"
    t.text    "other_details"
    t.float   "rating"
    t.text    "must_do"
  end

  create_table "cities", :force => true do |t|
    t.integer "country_id"
    t.string  "name"
    t.string  "weather"
    t.text    "best_time_of_visit"
    t.text    "other_info"
  end

  create_table "countries", :force => true do |t|
    t.string "name"
    t.string "continent"
  end

  create_table "hotels", :force => true do |t|
    t.string "name"
    t.text   "details"
    t.float  "ratings"
  end

  create_table "tour_operators", :force => true do |t|
    t.string "name"
    t.text   "details"
    t.string "contact"
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

  create_table "tours_hotels", :force => true do |t|
    t.integer "tour_id"
    t.integer "hotel_id"
  end

  create_table "tours_operators", :force => true do |t|
    t.string "name"
    t.text   "details"
    t.string "contact"
  end

  create_table "tours_operators_map", :force => true do |t|
    t.integer "tour_id"
    t.integer "tour_operator_id"
  end

  create_table "travel_styles", :force => true do |t|
    t.integer "tour_id"
    t.boolean "style1"
    t.boolean "style2"
    t.boolean "style3"
    t.boolean "style4"
    t.boolean "style5"
    t.boolean "style6"
    t.boolean "style7"
    t.boolean "style8"
  end

end
