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

ActiveRecord::Schema.define(version: 20130808140647) do

  create_table "armies", force: true do |t|
    t.string   "name",                       null: false
    t.integer  "user_id"
    t.integer  "era_id"
    t.integer  "nation_id"
    t.integer  "total_xp",       default: 0
    t.integer  "map_stage",      default: 0
    t.text     "game_data"
    t.integer  "battles_fought", default: 0
    t.integer  "ech1_allowed",   default: 2
    t.integer  "ech2_allowed",   default: 6
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "armies", ["era_id"], name: "index_armies_on_era_id"
  add_index "armies", ["nation_id"], name: "index_armies_on_nation_id"
  add_index "armies", ["user_id"], name: "index_armies_on_user_id"

  create_table "echelon1s", force: true do |t|
    t.string   "name"
    t.integer  "army_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "echelon1s", ["army_id"], name: "index_echelon1s_on_army_id"

  create_table "echelon2s", force: true do |t|
    t.string   "name"
    t.integer  "echelon1_id"
    t.integer  "unit_class_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "echelon2s", ["echelon1_id"], name: "index_echelon2s_on_echelon1_id"
  add_index "echelon2s", ["unit_class_id"], name: "index_echelon2s_on_unit_class_id"

  create_table "eras", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "ech1_name"
    t.string   "ech2_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "nations", force: true do |t|
    t.string   "name"
    t.string   "flag_img"
    t.integer  "era_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "nations", ["era_id"], name: "index_nations_on_era_id"

  create_table "unit_classes", force: true do |t|
    t.string   "name"
    t.string   "icon_img"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "unit_types", force: true do |t|
    t.string   "name"
    t.integer  "nation_id"
    t.integer  "unit_class_id"
    t.string   "toe_img"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_types", ["nation_id"], name: "index_unit_types_on_nation_id"
  add_index "unit_types", ["unit_class_id"], name: "index_unit_types_on_unit_class_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "",    null: false
    t.string   "username",               default: ""
    t.string   "encrypted_password",     default: "",    null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "games_allowed",          default: 2,     null: false
    t.boolean  "guest",                  default: false, null: false
    t.boolean  "superadmin",             default: false, null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
