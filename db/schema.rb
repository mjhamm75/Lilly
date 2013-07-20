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

ActiveRecord::Schema.define(version: 20130720151503) do

  create_table "advancements", force: true do |t|
    t.integer  "scout_id"
    t.integer  "merit_badge_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merit_badge_requirements", force: true do |t|
    t.integer  "merit_badge_id"
    t.integer  "requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "merit_badges", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "eagle_required", default: false
  end

  create_table "requirements", force: true do |t|
    t.string   "text"
    t.boolean  "completed"
    t.date     "date_finished"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "scouts", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.date     "birthdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
