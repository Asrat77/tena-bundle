# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_07_30_120209) do
  create_table "tena_dcms_appointments", force: :cascade do |t|
    t.date "date"
    t.integer "status"
    t.string "remarks"
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "doctor_on_app_indx"
    t.index ["patient_id"], name: "patient_on_app_indx"
  end

  create_table "tena_dcms_doctors", force: :cascade do |t|
    t.string "name"
    t.string "phone_number"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tena_dcms_invoices", force: :cascade do |t|
    t.date "generated_on", default: "2024-07-31"
    t.float "total_price"
    t.integer "service_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tena_dcms_lab_technicians", force: :cascade do |t|
    t.string "name"
    t.string "contact_info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tena_dcms_lab_tests", force: :cascade do |t|
    t.date "date", default: "2024-07-31"
    t.string "result"
    t.string "status"
    t.integer "lab_technician_id"
    t.integer "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lab_technician_id"], name: "lab_technician_on_lt_indx"
    t.index ["patient_id"], name: "patient_on_lt_indx"
  end

  create_table "tena_dcms_labs", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tena_dcms_patients", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "mobile_number"
    t.string "email"
    t.string "gender"
    t.integer "doctor_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "doctor_on_ccpoitm_indx"
  end

  create_table "tena_dcms_payments", force: :cascade do |t|
    t.integer "sub_total"
    t.integer "gross_total"
    t.integer "deposit_type"
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "doctor_on_payments_indx"
    t.index ["patient_id"], name: "patient_on_payments_indx"
  end

  create_table "tena_dcms_prescriptions", force: :cascade do |t|
    t.date "date", default: "2024-07-31"
    t.string "doctor_note"
    t.string "drug_information"
    t.integer "doctor_id", null: false
    t.integer "patient_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["doctor_id"], name: "doctor_on_ps_indx"
    t.index ["patient_id"], name: "patient_on_ps_indx"
  end

  add_foreign_key "tena_dcms_appointments", "tena_dcms_doctors", column: "doctor_id"
  add_foreign_key "tena_dcms_appointments", "tena_dcms_patients", column: "patient_id"
  add_foreign_key "tena_dcms_lab_tests", "tena_dcms_lab_technicians", column: "lab_technician_id"
  add_foreign_key "tena_dcms_lab_tests", "tena_dcms_patients", column: "patient_id"
  add_foreign_key "tena_dcms_patients", "tena_dcms_doctors", column: "doctor_id"
  add_foreign_key "tena_dcms_payments", "tena_dcms_doctors", column: "doctor_id"
  add_foreign_key "tena_dcms_payments", "tena_dcms_patients", column: "patient_id"
  add_foreign_key "tena_dcms_prescriptions", "tena_dcms_doctors", column: "doctor_id"
  add_foreign_key "tena_dcms_prescriptions", "tena_dcms_patients", column: "patient_id"
end
