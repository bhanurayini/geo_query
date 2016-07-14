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

ActiveRecord::Schema.define(version: 20160714173854) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "code"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.string   "physical_address"
    t.string   "mailing_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.string   "major_intersections"
    t.string   "address_status"
    t.string   "website"
    t.jsonb    "contact_name"
    t.jsonb    "contact_email"
    t.jsonb    "phone"
    t.jsonb    "service_hours"
    t.text     "service_hours_notes"
    t.jsonb    "hours"
    t.text     "other_eligibility"
    t.string   "case_management"
    t.text     "case_management_services"
    t.boolean  "donation_flag"
    t.boolean  "volunteer_flag"
    t.text     "volunteer_activity"
    t.boolean  "is_active"
    t.string   "is_deleted"
    t.boolean  "is_approved"
    t.integer  "start_age"
    t.integer  "end_age"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.integer  "program_id"
  end

  add_index "locations", ["program_id"], name: "index_locations_on_program_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.integer  "ein"
    t.string   "name"
    t.text     "purpose"
    t.string   "address"
    t.string   "mailing_address"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "website"
    t.string   "email"
    t.boolean  "email_visible_flag"
    t.jsonb    "phone"
    t.boolean  "is_approved"
    t.boolean  "is_deleted"
    t.boolean  "is_active"
    t.boolean  "is_draft"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "programs", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "website"
    t.string   "is_active"
    t.string   "is_deleted"
    t.jsonb    "contact_name"
    t.jsonb    "contact_email"
    t.jsonb    "phone"
    t.boolean  "is_approved"
    t.boolean  "meeting_flag"
    t.text     "meeting_time"
    t.string   "wait_list"
    t.string   "safe_haven"
    t.integer  "start_age"
    t.integer  "end_age"
    t.text     "eligibility"
    t.text     "restrictions"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "organization_id"
  end

  add_index "programs", ["organization_id"], name: "index_programs_on_organization_id", using: :btree

  create_table "staffs", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.jsonb    "contact_info"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_foreign_key "locations", "programs"
  add_foreign_key "programs", "organizations"
end
