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

ActiveRecord::Schema.define(version: 20170127202027) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text     "content",     null: false
    t.integer  "user_id",     null: false
    t.integer  "question_id", null: false
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "comments", force: :cascade do |t|
    t.string   "content",          null: false
    t.integer  "user_id",          null: false
    t.integer  "commentable_id",   null: false
    t.string   "commentable_type", null: false
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string   "title",      null: false
    t.text     "content",    null: false
    t.integer  "user_id",    null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",                default: "Kane",            null: false
    t.string   "username",            default: "user2260",        null: false
    t.string   "email",               default: "",                null: false
    t.string   "encrypted_password",  default: "",                null: false
    t.string   "address",             default: "Area51, Nevada",  null: false
    t.text     "bio",                 default: "I am a new Dev!", null: false
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",       default: 0,                 null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "title"
  end

  create_table "votes", force: :cascade do |t|
    t.integer  "user_id",      null: false
    t.integer  "votable_id",   null: false
    t.string   "votable_type", null: false
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
