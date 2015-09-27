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

ActiveRecord::Schema.define(version: 20150927205102) do

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.string   "short_discription"
    t.integer  "grade_level"
    t.date     "expiration_date"
    t.integer  "cost_to_complete"
    t.string   "poverty_level"
    t.string   "state"
    t.string   "image_url"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.date     "closing_date"
    t.integer  "funds"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "source"
  end

end
