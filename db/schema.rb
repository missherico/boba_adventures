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

ActiveRecord::Schema.define(version: 20140204030518) do

  create_table "fun_things", force: true do |t|
    t.string   "activity"
    t.string   "neighborhood"
    t.string   "cross_st1"
    t.string   "cross_st2"
    t.text     "insider_tip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "my_bobas", force: true do |t|
    t.string   "yelp_id"
    t.string   "name",          null: false
    t.text     "address"
    t.string   "city"
    t.string   "state"
    t.string   "phone"
    t.string   "mobile_url"
    t.text     "neighborhoods"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "location"
  end

  create_table "neighborhoods", force: true do |t|
    t.string   "hood"
    t.string   "city"
    t.string   "state"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
  end

  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

end
