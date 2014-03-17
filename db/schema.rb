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

ActiveRecord::Schema.define(version: 20140317045629) do

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
  end

  create_table "messages", force: true do |t|
    t.string   "note"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position"
    t.string   "chef1"
    t.string   "chef2"
    t.string   "chef3"
    t.string   "chef4"
    t.string   "chef5"
    t.string   "chef6"
    t.string   "chef7"
    t.string   "chef8"
    t.string   "chef9"
    t.string   "chef10"
    t.string   "shift"
    t.string   "shift2"
    t.string   "day"
    t.string   "scribble"
  end

  create_table "recipes", force: true do |t|
    t.string   "recipe"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.string   "shift"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
