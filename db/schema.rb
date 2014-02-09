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

ActiveRecord::Schema.define(version: 20140209173108) do

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

  create_table "children", force: true do |t|
    t.integer  "faculty_id"
    t.string   "name"
    t.string   "sex"
    t.integer  "age"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "children", ["faculty_id"], name: "index_children_on_faculty_id"

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
  end

end
