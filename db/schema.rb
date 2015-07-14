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

ActiveRecord::Schema.define(version: 20150714020516) do

  create_table "cats", force: :cascade do |t|
    t.string   "name"
    t.string   "photo_url"
    t.string   "color"
    t.text     "blurb"
    t.integer  "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "sex"
  end

  create_table "likes", force: :cascade do |t|
    t.integer  "liker_id"
    t.integer  "liked_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "matches", force: :cascade do |t|
    t.integer  "first_match_id"
    t.integer  "second_match_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string   "name"
    t.string   "state"
    t.string   "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rejections", force: :cascade do |t|
    t.integer  "rejector_id"
    t.integer  "rejected_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
