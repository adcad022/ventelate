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

ActiveRecord::Schema.define(version: 20150826204700) do

  create_table "lifeaids", force: :cascade do |t|
    t.string   "user_id"
    t.string   "lifeaid_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lifehelps", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lifelifts", force: :cascade do |t|
    t.string   "user_id"
    t.string   "lifevent_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "liferes", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "lifevents", force: :cascade do |t|
    t.string   "life_topic"
    t.integer  "urgency"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
  end

  create_table "otheraids", force: :cascade do |t|
    t.string   "user_id"
    t.string   "otheraid_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otherhelps", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otherlifts", force: :cascade do |t|
    t.string   "user_id"
    t.string   "othervent_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otherres", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "othervents", force: :cascade do |t|
    t.string   "other_topic"
    t.integer  "urgency"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
  end

  create_table "relationshipaids", force: :cascade do |t|
    t.string   "user_id"
    t.string   "relationshipaid_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationshiphelps", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationshiplifts", force: :cascade do |t|
    t.string   "user_id"
    t.string   "relationshipvent_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "relationshipres", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationshipvents", force: :cascade do |t|
    t.string   "relationship_topic"
    t.integer  "urgency"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
  end

  create_table "reslives", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "responses", force: :cascade do |t|
    t.string   "user_id"
    t.string   "vent_id"
    t.string   "topic"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "topics", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "username"
    t.integer  "age"
    t.string   "sex"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

  create_table "vents", force: :cascade do |t|
    t.string   "topic"
    t.integer  "urgency"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "worhelps", force: :cascade do |t|
    t.string   "user_id"
    t.string   "othervent_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workaids", force: :cascade do |t|
    t.string   "user_id"
    t.string   "workaid_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workhelps", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "worklifts", force: :cascade do |t|
    t.string   "user_id"
    t.string   "workvent_id"
    t.text     "support"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "workres", force: :cascade do |t|
    t.string   "user"
    t.text     "support"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workvents", force: :cascade do |t|
    t.string   "work_topic"
    t.integer  "urgency"
    t.text     "story"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "user_id"
  end

end
