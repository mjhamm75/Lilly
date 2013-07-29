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

ActiveRecord::Schema.define(version: 20130727133219) do

  create_table "advancement_requirements", force: true do |t|
    t.integer  "requirement_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date_completed"
    t.integer  "advancement_id"
    t.integer  "ord"
    t.string   "label"
  end

  create_table "advancements", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "scout_id"
    t.integer  "requirement_id"
    t.string   "name"
    t.boolean  "eagle_required", default: false
    t.integer  "ordinal"
    t.string   "type"
  end

  create_table "requirements", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "requirement"
  end

  create_table "scout_requirements", force: true do |t|
    t.integer  "scout_id"
    t.integer  "requirement_id"
    t.date     "date_completed"
    t.string   "parent_initial"
    t.string   "leader_initial"
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
