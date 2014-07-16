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

ActiveRecord::Schema.define(version: 20140716153948) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "countries", force: true do |t|
    t.string   "name"
    t.decimal  "lat"
    t.decimal  "lng"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "name"
    t.integer  "course_id"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prospective_students", force: true do |t|
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "records", force: true do |t|
    t.string   "course_id"
    t.string   "userid_di"
    t.boolean  "registered"
    t.boolean  "viewed"
    t.boolean  "explored"
    t.boolean  "certified"
    t.string   "final_cc_cname_di"
    t.string   "loe_di"
    t.integer  "yob"
    t.string   "gender"
    t.decimal  "grade"
    t.string   "start_time_di"
    t.string   "last_event_di"
    t.integer  "nevents"
    t.integer  "ndays_act"
    t.integer  "nplay_video"
    t.integer  "nchapters"
    t.integer  "nforum_posts"
    t.string   "roles"
    t.boolean  "incomplete_flag"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_title"
  end

  add_index "records", ["course_id"], name: "index_records_on_course_id", using: :btree
  add_index "records", ["final_cc_cname_di"], name: "index_records_on_final_cc_cname_di", using: :btree

  create_table "visualizations", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
