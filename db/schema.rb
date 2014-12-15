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

ActiveRecord::Schema.define(version: 20141215232311) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "games", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "league_teams", force: true do |t|
    t.integer  "team_id"
    t.integer  "league_id"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "league_teams", ["league_id"], name: "index_league_teams_on_league_id", using: :btree
  add_index "league_teams", ["team_id"], name: "index_league_teams_on_team_id", using: :btree

  create_table "leagues", force: true do |t|
    t.string   "name"
    t.string   "organizer"
    t.string   "orginazation"
    t.string   "description"
    t.datetime "begin_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "status"
    t.integer  "max_teams"
  end

  create_table "locations", force: true do |t|
    t.string   "loc_name"
    t.string   "street"
    t.string   "city"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "league_id"
    t.string   "state"
    t.float    "latitude"
    t.float    "longitude"
  end

  create_table "playergames", force: true do |t|
    t.integer  "points"
    t.integer  "rebounds"
    t.integer  "assist"
    t.integer  "fouls"
    t.integer  "player_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "playergames", ["game_id"], name: "index_playergames_on_game_id", using: :btree
  add_index "playergames", ["player_id"], name: "index_playergames_on_player_id", using: :btree

  create_table "players", force: true do |t|
    t.string   "fname"
    t.string   "lname"
    t.string   "hometown"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "playerteams", force: true do |t|
    t.integer  "team_id"
    t.integer  "player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "playerteams", ["player_id"], name: "index_playerteams_on_player_id", using: :btree
  add_index "playerteams", ["team_id"], name: "index_playerteams_on_team_id", using: :btree

  create_table "teamgames", force: true do |t|
    t.integer  "result"
    t.integer  "team_id"
    t.integer  "game_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teamgames", ["game_id"], name: "index_teamgames_on_game_id", using: :btree
  add_index "teamgames", ["team_id"], name: "index_teamgames_on_team_id", using: :btree

  create_table "teams", force: true do |t|
    t.string   "team_name"
    t.string   "slogan"
    t.string   "team_contact"
    t.string   "team_phone"
    t.string   "team_email"
    t.integer  "user_id"
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
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
