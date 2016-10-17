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

ActiveRecord::Schema.define(version: 20161017095324) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attendances", force: :cascade do |t|
    t.string   "status"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_attendances_on_student_id", using: :btree
  end

  create_table "exams", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "standard_id"
    t.integer  "subject_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "section_id"
    t.index ["section_id"], name: "index_exams_on_section_id", using: :btree
    t.index ["standard_id"], name: "index_exams_on_standard_id", using: :btree
    t.index ["subject_id"], name: "index_exams_on_subject_id", using: :btree
  end

  create_table "results", force: :cascade do |t|
    t.string   "status"
    t.float    "marks"
    t.string   "division"
    t.integer  "subject_id"
    t.integer  "student_id"
    t.integer  "standard_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "exam_id"
    t.index ["exam_id"], name: "index_results_on_exam_id", using: :btree
    t.index ["standard_id"], name: "index_results_on_standard_id", using: :btree
    t.index ["student_id"], name: "index_results_on_student_id", using: :btree
    t.index ["subject_id"], name: "index_results_on_subject_id", using: :btree
  end

  create_table "schools", force: :cascade do |t|
    t.string   "name"
    t.text     "address"
    t.string   "team"
    t.string   "course_offer"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "email"
  end

  create_table "sections", force: :cascade do |t|
    t.string   "name"
    t.integer  "standard_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["standard_id"], name: "index_sections_on_standard_id", using: :btree
  end

  create_table "standards", force: :cascade do |t|
    t.string   "name"
    t.integer  "school_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["school_id"], name: "index_standards_on_school_id", using: :btree
  end

  create_table "student_attendances", force: :cascade do |t|
    t.string   "status"
    t.integer  "student_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_student_attendances_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "email_id"
    t.integer  "phone_no"
    t.text     "address"
    t.integer  "section_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["section_id"], name: "index_students_on_section_id", using: :btree
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "credit"
    t.integer  "teacher_id"
    t.integer  "standard_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "exam_id"
    t.integer  "student_id"
    t.integer  "result_id"
    t.index ["exam_id"], name: "index_subjects_on_exam_id", using: :btree
    t.index ["result_id"], name: "index_subjects_on_result_id", using: :btree
    t.index ["standard_id"], name: "index_subjects_on_standard_id", using: :btree
    t.index ["student_id"], name: "index_subjects_on_student_id", using: :btree
    t.index ["teacher_id"], name: "index_subjects_on_teacher_id", using: :btree
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "age"
    t.string   "email_id"
    t.integer  "phone_no"
    t.text     "address"
    t.string   "area_of_expertise"
    t.string   "qualification"
    t.string   "experience"
    t.integer  "standard_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.index ["standard_id"], name: "index_teachers_on_standard_id", using: :btree
  end

  add_foreign_key "attendances", "students"
  add_foreign_key "exams", "sections"
  add_foreign_key "exams", "standards"
  add_foreign_key "exams", "subjects"
  add_foreign_key "results", "exams"
  add_foreign_key "results", "standards"
  add_foreign_key "results", "students"
  add_foreign_key "results", "subjects"
  add_foreign_key "sections", "standards"
  add_foreign_key "standards", "schools"
  add_foreign_key "student_attendances", "students"
  add_foreign_key "students", "sections"
  add_foreign_key "subjects", "exams"
  add_foreign_key "subjects", "results"
  add_foreign_key "subjects", "standards"
  add_foreign_key "subjects", "students"
  add_foreign_key "subjects", "teachers"
  add_foreign_key "teachers", "standards"
end
