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

ActiveRecord::Schema.define(version: 0) do

  create_table "affiliations", force: true do |t|
    t.integer "hospital_id"
    t.integer "doctor_id"
  end

  add_index "affiliations", ["doctor_id"], name: "index_affiliations_on_doctor_id"
  add_index "affiliations", ["hospital_id"], name: "index_affiliations_on_hospital_id"

  create_table "doctors", force: true do |t|
    t.string  "name"
    t.string  "dob"
    t.string  "education"
    t.string  "years_of_experience"
    t.string  "specialty"
    t.integer "typeofdoctor_id"
    t.integer "hospital_id"
    t.integer "user_id"
  end

  add_index "doctors", ["hospital_id"], name: "index_doctors_on_hospital_id"
  add_index "doctors", ["typeofdoctor_id"], name: "index_doctors_on_typeofdoctor_id"
  add_index "doctors", ["user_id"], name: "index_doctors_on_user_id"

  create_table "hospitals", force: true do |t|
    t.string "name"
    t.string "private_public_hospital"
    t.string "year_founded"
  end

  create_table "patients", force: true do |t|
    t.string  "name"
    t.string  "dob"
    t.string  "diagnosis"
    t.string  "symptoms"
    t.string  "level_of_pain"
    t.string  "notes"
    t.integer "hospital_id"
    t.integer "doctor_id"
    t.integer "user_id"
  end

  add_index "patients", ["doctor_id"], name: "index_patients_on_doctor_id"
  add_index "patients", ["hospital_id"], name: "index_patients_on_hospital_id"
  add_index "patients", ["user_id"], name: "index_patients_on_user_id"

  create_table "reviews", force: true do |t|
    t.string  "user"
    t.integer "treatment_quality"
    t.string  "recommendation"
    t.text    "review_comments"
  end

  create_table "typeof_doctors", force: true do |t|
    t.string "specialty"
  end

  create_table "users", force: true do |t|
    t.string  "name"
    t.string  "email"
    t.string  "date_joined"
    t.string  "password"
    t.integer "patient_id"
    t.integer "doctor_id"
  end

  add_index "users", ["doctor_id"], name: "index_users_on_doctor_id"
  add_index "users", ["patient_id"], name: "index_users_on_patient_id"

end
