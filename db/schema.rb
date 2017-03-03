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

ActiveRecord::Schema.define(version: 20170303034701) do

  create_table "cohabitant_addresses", force: :cascade do |t|
    t.integer  "cohabitant_id", limit: 4
    t.string   "address",       limit: 255
    t.string   "email",         limit: 255
    t.string   "mobile_1",      limit: 255
    t.string   "mobile_2",      limit: 255
    t.string   "mobile_3",      limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cohabitant_educations", force: :cascade do |t|
    t.integer  "cohabitant_id",   limit: 4
    t.string   "area",            limit: 255
    t.string   "education",       limit: 255
    t.string   "occupation",      limit: 255
    t.string   "occupation_city", limit: 255
    t.float    "income",          limit: 24
    t.boolean  "is_income_annua", limit: 1,   default: true
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
  end

  create_table "cohabitant_expectations", force: :cascade do |t|
    t.integer  "cohabitant_id",  limit: 4
    t.string   "cities",         limit: 255
    t.string   "mangal",         limit: 255
    t.string   "caste",          limit: 255
    t.string   "age_difference", limit: 255
    t.string   "min_height",     limit: 255
    t.boolean  "divorcee",       limit: 1
    t.string   "occupation",     limit: 255
    t.string   "education",      limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "cohabitant_families", force: :cascade do |t|
    t.integer  "cohabitant_id",         limit: 4
    t.boolean  "has_mother",            limit: 1
    t.string   "mother_name",           limit: 255
    t.boolean  "has_father",            limit: 1
    t.string   "father_name",           limit: 255
    t.integer  "brothers",              limit: 4
    t.integer  "married_brothers",      limit: 4
    t.integer  "sisters",               limit: 4
    t.integer  "married_sisters",       limit: 4
    t.string   "parents_occupation",    limit: 255
    t.string   "surnames_of_relatives", limit: 255
    t.string   "native_district",       limit: 255
    t.string   "native_taluka",         limit: 255
    t.string   "family_wealth",         limit: 255
    t.string   "mamas_name",            limit: 255
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
  end

  create_table "cohabitant_horoscops", force: :cascade do |t|
    t.string   "rashi",         limit: 255
    t.string   "nakshtra",      limit: 255
    t.string   "charan",        limit: 255
    t.string   "nadi",          limit: 255
    t.string   "gan",           limit: 255
    t.string   "birth_place",   limit: 255
    t.datetime "birth_time"
    t.boolean  "mangal",        limit: 1
    t.string   "devak",         limit: 255
    t.integer  "cohabitant_id", limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "cohabitants", force: :cascade do |t|
    t.string   "first_name",               limit: 255, null: false
    t.string   "last_name",                limit: 255, null: false
    t.string   "middle_name",              limit: 255, null: false
    t.date     "date_of_birth",                        null: false
    t.string   "sub_cast",                 limit: 255
    t.string   "married_status",           limit: 255
    t.float    "height",                   limit: 24
    t.float    "weight",                   limit: 24
    t.string   "blood_group",              limit: 255
    t.string   "complexion",               limit: 255
    t.boolean  "is_physical_disabilities", limit: 1
    t.string   "physical_disabilities",    limit: 255
    t.string   "diet",                     limit: 255
    t.boolean  "spectacles",               limit: 1
    t.boolean  "lens",                     limit: 1
    t.string   "mobile",                   limit: 255
    t.string   "reg_id",                   limit: 255
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

end
