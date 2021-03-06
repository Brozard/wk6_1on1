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

ActiveRecord::Schema.define(version: 20160511000257) do

  create_table "comments", force: :cascade do |t|
    t.string   "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "following_users", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "follower_user_id"
  end

  add_index "following_users", ["follower_user_id", "user_id"], name: "index_following_users_on_follower_user_id_and_user_id", unique: true
  add_index "following_users", ["user_id", "follower_user_id"], name: "index_following_users_on_user_id_and_follower_user_id", unique: true

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "bio"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
