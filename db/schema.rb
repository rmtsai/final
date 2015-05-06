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

  create_table "doctors", force: true do |t|
    t.string "name"
    t.string "dob"
    t.string "education"
    t.string "years_of_experience"
    t.string "specialty"
  end

  create_table "hospital_names", force: true do |t|
    t.string  "name"
    t.string  "private_public_hospital"
    t.string  "year_founded"
    t.integer "doctors"
  end

  create_table "reviews", force: true do |t|
    t.string  "user"
    t.integer "treatment_quality"
    t.string  "recommendation"
    t.text    "review_comments"
  end

  create_table "typeof_doctors", force: true do |t|
    t.string  "specialty"
    t.integer "doctor"
  end

  create_table "users", force: true do |t|
    t.string "name"
    t.string "email"
    t.string "date_joined"
    t.string "password"
  end

end
