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

ActiveRecord::Schema.define(version: 20140215130428) do

  create_table "absences", force: true do |t|
    t.integer  "faculty_id"
    t.datetime "date_of_absence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "absences", ["faculty_id"], name: "index_absences_on_faculty_id"

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "char_refs", force: true do |t|
    t.integer  "faculty_id"
    t.string   "name"
    t.string   "designation"
    t.string   "address"
    t.string   "tel"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "char_refs", ["faculty_id"], name: "index_char_refs_on_faculty_id"

  create_table "children", force: true do |t|
    t.integer  "faculty_id"
    t.string   "name"
    t.string   "sex"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "children", ["faculty_id"], name: "index_children_on_faculty_id"

  create_table "civil_service_and_govt_exams", force: true do |t|
    t.integer  "faculty_id"
    t.string   "exam_type"
    t.datetime "date_taken"
    t.string   "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "civil_service_and_govt_exams", ["faculty_id"], name: "index_civil_service_and_govt_exams_on_faculty_id"

  create_table "educational_attainments", force: true do |t|
    t.integer  "faculty_id"
    t.string   "school_name_elemetary"
    t.string   "school_location_elementary"
    t.datetime "school_yearfrom_elementary"
    t.datetime "school_yearto_elementary"
    t.string   "school_degrees_elementary"
    t.string   "school_honors_elementary"
    t.string   "school_name_intermediate"
    t.string   "school_location_intermediate"
    t.datetime "school_yearfrom_intermediate"
    t.datetime "school_yearto_intermediate"
    t.string   "school_degrees_intermediate"
    t.string   "school_honors_intermediate"
    t.string   "school_name_secondary"
    t.string   "school_location_secondary"
    t.datetime "school_yearfrom_secondary"
    t.datetime "school_yearto_secondary"
    t.string   "school_degrees_secondary"
    t.string   "school_honors_secondary"
    t.string   "school_name_collegiate"
    t.string   "school_location_collegiate"
    t.datetime "school_yearfrom_collegiate"
    t.datetime "school_yearto_collegiate"
    t.string   "school_degrees_collegiate"
    t.string   "school_honors_collegiate"
    t.string   "school_name_graduate"
    t.string   "school_location_graduate"
    t.datetime "school_yearfrom_graduate"
    t.datetime "school_yearto_graduate"
    t.string   "school_degrees_graduate"
    t.string   "school_honors_graduate"
    t.string   "school_name_doctoral"
    t.string   "school_location_doctoral"
    t.datetime "school_yearfrom_doctoral"
    t.datetime "school_yearto_doctoral"
    t.string   "school_degrees_doctoral"
    t.string   "school_honors_doctoral"
    t.string   "college_major"
    t.string   "college_minor"
    t.string   "special_studies"
    t.string   "present_studies"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "educational_attainments", ["faculty_id"], name: "index_educational_attainments_on_faculty_id"

  create_table "faculties", force: true do |t|
    t.string   "last_name"
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "present_address"
    t.string   "present_address_tel"
    t.string   "perma_address"
    t.string   "perma_address_tel"
    t.string   "nationality"
    t.string   "citizen"
    t.string   "birth_place"
    t.datetime "birth_date"
    t.string   "civil_status"
    t.string   "sex"
    t.string   "spouse"
    t.datetime "marriage_date"
    t.string   "occupation"
    t.string   "position"
    t.string   "employer"
    t.string   "employer_tel"
    t.integer  "no_of_child"
    t.integer  "no_of_child_studying"
    t.integer  "no_of_child_working"
    t.string   "father_name"
    t.integer  "father_age"
    t.string   "mother_name"
    t.integer  "mother_age"
    t.string   "tin"
    t.string   "sss"
    t.string   "gsis"
    t.string   "philhealth"
    t.string   "pro_license"
    t.string   "resid_cert"
    t.string   "issued_at"
    t.datetime "issued_on"
    t.datetime "pro_license_expire"
    t.string   "academic_rank"
    t.string   "faculty_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "faculty_status2"
    t.string   "pagibig"
    t.string   "tbi"
    t.string   "department"
    t.datetime "contractfrom"
    t.datetime "contractto"
  end

  create_table "load_assign_in_others", force: true do |t|
    t.integer  "faculty_id"
    t.string   "institution"
    t.string   "load_assign_subject"
    t.integer  "load_assign_unit"
    t.string   "load_assign_day"
    t.datetime "load_assign_time"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "load_assign_in_others", ["faculty_id"], name: "index_load_assign_in_others_on_faculty_id"

  create_table "non_teaching_experiences", force: true do |t|
    t.integer  "faculty_id"
    t.string   "position"
    t.string   "institution"
    t.integer  "salary"
    t.datetime "date_employed_from"
    t.datetime "date_employed_to"
    t.string   "leave_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "non_teaching_experiences", ["faculty_id"], name: "index_non_teaching_experiences_on_faculty_id"

  create_table "professional_memberships", force: true do |t|
    t.integer  "faculty_id"
    t.string   "org_name"
    t.datetime "membership_date"
    t.integer  "no_of_yrs"
    t.string   "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "professional_memberships", ["faculty_id"], name: "index_professional_memberships_on_faculty_id"

  create_table "publications_and_researches", force: true do |t|
    t.integer  "faculty_id"
    t.string   "organ_name"
    t.string   "material_type"
    t.datetime "publication_date"
    t.string   "authorship_type"
    t.string   "co_author"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "publications_and_researches", ["faculty_id"], name: "index_publications_and_researches_on_faculty_id"

  create_table "teaching_experiences", force: true do |t|
    t.integer  "faculty_id"
    t.integer  "tot_sems_sbc"
    t.integer  "tot_sems_other"
    t.string   "exp_other"
    t.string   "position"
    t.string   "institution"
    t.integer  "salary"
    t.datetime "date_employed_from"
    t.datetime "date_employed_to"
    t.string   "leave_reason"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "teaching_experiences", ["faculty_id"], name: "index_teaching_experiences_on_faculty_id"

  create_table "versions", force: true do |t|
    t.string   "item_type",      null: false
    t.integer  "item_id",        null: false
    t.string   "event",          null: false
    t.string   "whodunnit"
    t.text     "object"
    t.datetime "created_at"
    t.text     "object_changes"
  end

  add_index "versions", ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"

end
