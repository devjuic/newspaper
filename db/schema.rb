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

ActiveRecord::Schema.define(version: 20141217121011) do

  create_table "topic_subscriptions", force: true do |t|
    t.integer  "user_id"
    t.integer  "topic_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "topic_subscriptions", ["topic_id"], name: "index_topic_subscriptions_on_topic_id"
  add_index "topic_subscriptions", ["user_id", "topic_id"], name: "index_topic_subscriptions_on_user_id_and_topic_id", unique: true
  add_index "topic_subscriptions", ["user_id"], name: "index_topic_subscriptions_on_user_id"

  create_table "topics", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "uuid",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
