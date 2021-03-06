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

ActiveRecord::Schema.define(version: 20141119050455) do

  create_table "clients", force: true do |t|
    t.string   "first_name"
    t.string   "middle_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "employees", force: true do |t|
    t.string   "name"
    t.string   "middle_name"
    t.string   "last_name"
    t.float    "salary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "fiscal_data", force: true do |t|
    t.string   "RFC"
    t.string   "entity_name"
    t.datetime "date_of_birth"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "location_id"
  end

  create_table "labors", force: true do |t|
    t.time     "estimated_time"
    t.text     "description"
    t.float    "cost"
    t.float    "external_comision"
    t.float    "internal_comision"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id"
    t.integer  "procedure_id"
  end

  create_table "locations", force: true do |t|
    t.string   "street"
    t.integer  "street_number"
    t.string   "suburb"
    t.integer  "postal_code"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "order_vehicle_workshops", force: true do |t|
    t.integer  "vehicle_id"
    t.integer  "workshop_id"
    t.integer  "order_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", force: true do |t|
    t.datetime "entry_date"
    t.float    "expenses"
    t.float    "tax"
    t.float    "total_cost"
    t.datetime "promised_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "employee_id"
  end

  create_table "procedures", force: true do |t|
    t.text     "description"
    t.float    "consumible_lab"
    t.float    "consumible_general"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "order_id"
  end

  create_table "spare_parts", force: true do |t|
    t.string   "name"
    t.string   "provider"
    t.float    "cost"
    t.float    "extra_cost"
    t.integer  "quantity"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "procedure_id"
  end

  create_table "vehicles", force: true do |t|
    t.string   "series_num"
    t.string   "model"
    t.string   "brand"
    t.string   "color"
    t.string   "placas"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_id"
  end

  create_table "workshops", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
