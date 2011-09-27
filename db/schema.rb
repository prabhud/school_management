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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110917170141) do

  create_table "casts", :force => true do |t|
    t.string   "cast_name"
    t.text     "cast_des"
    t.boolean  "cast_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", :force => true do |t|
    t.string   "iso"
    t.string   "name"
    t.string   "printable_name"
    t.string   "iso2"
    t.string   "iso3"
    t.integer  "numcode"
    t.string   "textcode"
    t.string   "capital"
    t.integer  "population"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emp_types", :force => true do |t|
    t.string   "emptype_name"
    t.string   "emptype_des"
    t.boolean  "emptype_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employees", :force => true do |t|
    t.string   "emp_name"
    t.string   "emp_address1"
    t.string   "emp_address2"
    t.string   "emp_city"
    t.string   "emp_state"
    t.string   "emp_pin"
    t.string   "emp_country"
    t.string   "emp_mobile"
    t.string   "emp_email"
    t.boolean  "emp_active"
    t.integer  "emp_type_id"
    t.integer  "school_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schools", :force => true do |t|
    t.string   "sc_name"
    t.string   "sc_address1"
    t.string   "sc_address2"
    t.string   "sc_city"
    t.string   "sc_state"
    t.string   "sc_country"
    t.string   "sc_pin"
    t.string   "sc_tel_no"
    t.string   "sc_web_addr"
    t.string   "sc_email_addr"
    t.string   "sc_fax_no"
    t.boolean  "sc_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sections", :force => true do |t|
    t.string   "sec_name"
    t.string   "sec_des"
    t.boolean  "sec_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "standards", :force => true do |t|
    t.string   "std_name_str"
    t.string   "std_name_int"
    t.string   "std_des"
    t.boolean  "std_active"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_pre_sc_details", :force => true do |t|
    t.string   "pre_sc_name"
    t.string   "pre_sc_principal_name"
    t.string   "pre_sc_address1"
    t.string   "pre_sc_address2"
    t.string   "pre_sc_city"
    t.string   "pre_sc_state"
    t.string   "pre_sc_country"
    t.string   "pre_sc_pin"
    t.string   "pre_sc_tel_no"
    t.string   "pre_sc_web_addr"
    t.string   "pre_sc_email_addr"
    t.string   "pre_sc_fax_no"
    t.string   "pre_sc_last_studied"
    t.date     "pre_sc_leaving_date"
    t.text     "pre_sc_rea_of_leaving"
    t.integer  "student_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stud_std_details", :force => true do |t|
    t.string   "rollno"
    t.string   "year_of_joining"
    t.string   "year_of_passing"
    t.string   "result"
    t.string   "grade"
    t.integer  "section_id"
    t.integer  "standard_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "stud_firstname"
    t.string   "stud_lastname"
    t.boolean  "stud_sex"
    t.date     "stud_dob"
    t.string   "stud_father_name"
    t.string   "stud_mother_name"
    t.string   "stud_guardian_name"
    t.string   "stud_address1"
    t.string   "stud_address2"
    t.string   "stud_city"
    t.string   "stud_state"
    t.string   "country"
    t.string   "stud_pin"
    t.text     "stud_identification"
    t.string   "stud_contact_number"
    t.string   "stud_blood_group"
    t.string   "stud_religion"
    t.string   "stud_nationality"
    t.string   "stud_mother_tounge"
    t.date     "stud_date_of_joining"
    t.string   "stud_std_admitted"
    t.boolean  "stud_active"
    t.integer  "school_id"
    t.integer  "sub_cast_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sub_casts", :force => true do |t|
    t.string   "subcast_name"
    t.text     "subcast_des"
    t.boolean  "subcast_active"
    t.integer  "cast_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
