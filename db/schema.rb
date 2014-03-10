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

ActiveRecord::Schema.define(version: 20140310164900) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "controllers", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "registrations"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "controllers", ["email"], name: "index_controllers_on_email", unique: true, using: :btree
  add_index "controllers", ["reset_password_token"], name: "index_controllers_on_reset_password_token", unique: true, using: :btree

  create_table "shows", force: true do |t|
    t.datetime "date"
    t.decimal  "guarantee",                precision: 11, scale: 2
    t.string   "structure"
    t.integer  "radius"
    t.integer  "days_prior"
    t.integer  "days_after"
    t.boolean  "is_confirmed",                                      default: false
    t.boolean  "has_conflict",                                      default: false
    t.boolean  "is_rejected",                                       default: false
    t.string   "ticket_counts_preference"
    t.integer  "venue_id"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "shows", ["user_id"], name: "index_shows_on_user_id", using: :btree
  add_index "shows", ["venue_id"], name: "index_shows_on_venue_id", using: :btree

  create_table "tours", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "venues", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
    t.string   "box_office_phone"
    t.string   "box_office_email"
    t.string   "contact_phone"
    t.string   "contact_email"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "venues", ["user_id"], name: "index_venues_on_user_id", using: :btree

end
