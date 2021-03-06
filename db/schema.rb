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

ActiveRecord::Schema.define(version: 20150429014357) do

  create_table "answers", force: :cascade do |t|
    t.string   "answer_text"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "survey_answer_id"
    t.integer  "question_id"
  end

  create_table "choices", force: :cascade do |t|
    t.string   "choice_text"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "question_id"
    t.boolean  "is_checked"
  end

  create_table "questions", force: :cascade do |t|
    t.string   "question_text"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "question_type"
    t.integer  "survey_id"
    t.string   "help_text"
    t.string   "choice_list"
  end

  create_table "survey_answers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "survey_id"
  end

  create_table "surveys", force: :cascade do |t|
    t.string   "survey_name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

end
