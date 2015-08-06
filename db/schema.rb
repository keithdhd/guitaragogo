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

ActiveRecord::Schema.define(version: 20150806104626) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "controllers", force: :cascade do |t|
    t.string   "users"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "genres_songs", id: false, force: :cascade do |t|
    t.integer "genre_id", null: false
    t.integer "song_id",  null: false
  end

  create_table "instruments", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lessons", force: :cascade do |t|
    t.string   "title"
    t.integer  "instrument_id"
    t.integer  "song_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "teacher_id"
    t.string   "video_url"
  end

  add_index "lessons", ["instrument_id"], name: "index_lessons_on_instrument_id", using: :btree
  add_index "lessons", ["song_id"], name: "index_lessons_on_song_id", using: :btree

  create_table "saved_songs", force: :cascade do |t|
    t.integer  "song_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "student_id"
    t.string   "status"
  end

  add_index "saved_songs", ["song_id"], name: "index_saved_songs_on_song_id", using: :btree

  create_table "songs", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "difficulty"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "first_name"
    t.string   "last_name"
    t.text     "image"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "avatar"
  end

  add_foreign_key "lessons", "instruments"
  add_foreign_key "lessons", "songs"
  add_foreign_key "saved_songs", "songs"
end
