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

ActiveRecord::Schema.define(version: 20150914132268) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "intersail_auth_users", force: true do |t|
    t.string   "cognome"
    t.string   "nome"
    t.string   "username"
    t.string   "auth_hash"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.json     "urrs",             default: {}
    t.json     "application_data", default: {}
    t.integer  "external_id"
    t.string   "session_id"
  end

  add_index "intersail_auth_users", ["username"], name: "index_intersail_auth_users_on_username", unique: true, using: :btree

end
