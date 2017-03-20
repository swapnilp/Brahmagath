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

ActiveRecord::Schema.define(version: 20170318181931) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohabitant_addresses", force: :cascade do |t|
    t.integer  "cohabitant_id"
    t.string   "address"
    t.string   "email"
    t.string   "mobile_1"
    t.string   "mobile_2"
    t.string   "mobile_3"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cohabitant_educations", force: :cascade do |t|
    t.integer  "cohabitant_id"
    t.string   "area"
    t.string   "education"
    t.string   "occupation"
    t.string   "occupation_city"
    t.float    "income"
    t.boolean  "is_income_annua", default: true
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "cohabitant_expectations", force: :cascade do |t|
    t.integer  "cohabitant_id"
    t.string   "cities"
    t.string   "mangal"
    t.string   "caste"
    t.string   "age_difference"
    t.string   "min_height"
    t.boolean  "divorcee"
    t.string   "occupation"
    t.string   "education"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "cohabitant_families", force: :cascade do |t|
    t.integer  "cohabitant_id"
    t.boolean  "has_mother"
    t.string   "mother_name"
    t.boolean  "has_father"
    t.string   "father_name"
    t.integer  "brothers"
    t.integer  "married_brothers"
    t.integer  "sisters"
    t.integer  "married_sisters"
    t.string   "parents_occupation"
    t.string   "surnames_of_relatives"
    t.string   "native_district"
    t.string   "native_taluka"
    t.string   "family_wealth"
    t.string   "mamas_name"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
  end

  create_table "cohabitant_horoscops", force: :cascade do |t|
    t.string   "rashi"
    t.string   "nakshtra"
    t.string   "charan"
    t.string   "nadi"
    t.string   "gan"
    t.string   "birth_place"
    t.datetime "birth_time"
    t.boolean  "mangal"
    t.string   "devak"
    t.integer  "cohabitant_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "cohabitants", force: :cascade do |t|
    t.string   "first_name",               null: false
    t.string   "last_name",                null: false
    t.string   "middle_name",              null: false
    t.date     "date_of_birth",            null: false
    t.string   "sub_cast"
    t.string   "married_status"
    t.float    "height"
    t.float    "weight"
    t.string   "blood_group"
    t.string   "complexion"
    t.boolean  "is_physical_disabilities"
    t.string   "physical_disabilities"
    t.string   "diet"
    t.boolean  "spectacles"
    t.boolean  "lens"
    t.string   "mobile"
    t.string   "reg_id"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "mobile",                 default: "", null: false
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
