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

ActiveRecord::Schema.define(version: 20141021191046) do

  create_table "keywords", force: true do |t|
    t.string   "keyword"
    t.integer  "value"
    t.integer  "mashup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "keywords", ["mashup_id"], name: "index_keywords_on_mashup_id"

  create_table "link_sources", force: true do |t|
    t.string   "name"
    t.string   "picture"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "links", force: true do |t|
    t.integer  "value"
    t.string   "link"
    t.string   "title"
    t.integer  "mashup_id"
    t.integer  "link_source_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "links", ["link_source_id"], name: "index_links_on_link_source_id"
  add_index "links", ["mashup_id"], name: "index_links_on_mashup_id"

  create_table "mashups", force: true do |t|
    t.string   "parameters"
    t.string   "name"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "mashups", ["user_id"], name: "index_mashups_on_user_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "mail"
    t.string   "password_digest"
    t.string   "token"
    t.string   "provider"
    t.string   "uid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
