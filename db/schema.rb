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

ActiveRecord::Schema.define(version: 20131113105320) do

  create_table "advancement_requirements", force: true do |t|
    t.integer  "advancement_id"
    t.integer  "requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "label"
    t.integer  "ord"
    t.string   "children"
    t.integer  "children_count"
    t.integer  "parent"
    t.integer  "service_minutes"
  end

  create_table "advancements", force: true do |t|
    t.string   "name"
    t.boolean  "eagle_required"
    t.string   "type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "requirements", force: true do |t|
    t.text     "requirement"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "internal_id"
    t.integer  "children_merit_badge_count", default: 0
  end

  create_table "scout_advancements", force: true do |t|
    t.integer  "scout_id"
    t.integer  "advancement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "reqs_remaining", default: 0
    t.date     "completed_date"
  end

  create_table "scout_requirements", force: true do |t|
    t.integer  "scout_id"
    t.integer  "requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "leader_initial"
    t.string   "parent_initial"
    t.date     "completed_date"
  end

  create_table "scouts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "service_hours", force: true do |t|
    t.string   "title"
    t.string   "place"
    t.integer  "minutes"
    t.date     "date_of_service"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "scout_id"
  end

end
