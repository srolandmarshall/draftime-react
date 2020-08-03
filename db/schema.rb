# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_03_230642) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "fantasy_drafts", force: :cascade do |t|
    t.bigint "fantasy_league_id", null: false
    t.string "name"
    t.datetime "datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.json "config"
    t.index ["fantasy_league_id"], name: "index_fantasy_drafts_on_fantasy_league_id"
  end

  create_table "fantasy_leagues", force: :cascade do |t|
    t.string "name"
    t.integer "max_teams"
    t.bigint "league_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["league_id"], name: "index_fantasy_leagues_on_league_id"
  end

  create_table "fantasy_teams", force: :cascade do |t|
    t.string "name"
    t.string "abbrev"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "fantasy_league_id", null: false
    t.index ["fantasy_league_id"], name: "index_fantasy_teams_on_fantasy_league_id"
  end

  create_table "leagues", force: :cascade do |t|
    t.string "name"
  end

  create_table "picks", force: :cascade do |t|
    t.bigint "player_id"
    t.bigint "fantasy_draft_id", null: false
    t.bigint "fantasy_team_id", null: false
    t.integer "round"
    t.integer "pick_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["fantasy_draft_id"], name: "index_picks_on_fantasy_draft_id"
    t.index ["fantasy_team_id"], name: "index_picks_on_fantasy_team_id"
    t.index ["player_id"], name: "index_picks_on_player_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.string "position"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "fname"
    t.string "lname"
    t.string "display_name"
    t.integer "jersey"
    t.integer "league_id"
    t.integer "team_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "code"
    t.string "full_name"
    t.string "short_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "league_id", null: false
    t.index ["league_id"], name: "index_teams_on_league_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "fantasy_drafts", "fantasy_leagues"
  add_foreign_key "fantasy_leagues", "leagues"
  add_foreign_key "fantasy_teams", "fantasy_leagues"
  add_foreign_key "picks", "fantasy_drafts"
  add_foreign_key "picks", "fantasy_teams"
  add_foreign_key "picks", "players"
  add_foreign_key "teams", "leagues"
end
