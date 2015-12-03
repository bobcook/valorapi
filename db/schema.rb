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

ActiveRecord::Schema.define(version: 20151203222058) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "forums", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guilds", force: :cascade do |t|
    t.string   "name"
    t.string   "guild_tag"
    t.string   "description"
    t.string   "welcome_message_subject"
    t.string   "welcome_message_description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "iaps", force: :cascade do |t|
    t.string   "reciept"
    t.string   "platform"
    t.boolean  "processed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.date     "start_date"
    t.date     "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "titles", force: :cascade do |t|
    t.string   "name"
    t.string   "image"
    t.string   "icon"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.date     "last_login_date"
    t.float    "in_game_currency"
    t.string   "locale"
    t.boolean  "ban"
    t.boolean  "email_validated"
    t.float    "client_version"
    t.string   "player_name"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "villages", force: :cascade do |t|
    t.integer  "x"
    t.integer  "y"
    t.binary   "building_stats"
    t.integer  "score_value"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "world_configurations", force: :cascade do |t|
    t.string   "primary_type"
    t.string   "secondary_type"
    t.float    "resource_speed"
    t.float    "unit_speed"
    t.float    "tech_speed"
    t.boolean  "market_active"
    t.boolean  "quest_active"
    t.boolean  "tutorial_on"
    t.integer  "population_limit"
    t.integer  "respawn_limit"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "worlds", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
