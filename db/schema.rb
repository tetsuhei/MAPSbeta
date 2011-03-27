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

ActiveRecord::Schema.define(:version => 20110326022238) do

  create_table "fab_processes", :force => true do |t|
    t.string   "name"
    t.string   "category"
    t.integer  "parameter_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description"
  end

  create_table "parameters", :force => true do |t|
    t.string   "name"
    t.decimal  "optimum_value"
    t.decimal  "tolerance"
    t.string   "units"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "process_flows", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "process_steps", :force => true do |t|
    t.integer  "fab_process_id"
    t.integer  "process_flow_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "quantity"
  end

end
