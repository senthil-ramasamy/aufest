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

ActiveRecord::Schema.define(version: 20160108071014) do

  create_table "registers", force: :cascade do |t|
    t.string   "fname",       limit: 255
    t.string   "lname",       limit: 255
    t.string   "email",       limit: 255
    t.integer  "contactno",   limit: 8
    t.string   "collegename", limit: 255
    t.string   "coladdress",  limit: 255
    t.string   "city",        limit: 255
    t.string   "state",       limit: 255
    t.integer  "pincode",     limit: 8
    t.string   "fphydirname", limit: 255
    t.string   "lphydirname", limit: 255
    t.integer  "pdcontact",   limit: 4
    t.string   "sports",      limit: 255
    t.string   "menwomen",    limit: 255
    t.string   "singdouble",  limit: 255
    t.boolean  "accepted"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "name",                   limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
