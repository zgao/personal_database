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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130103040252) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "due_dates", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.datetime "time_due"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "due_dates", ["category_id"], :name => "index_due_dates_on_category_id"

  create_table "items", :force => true do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "category_id"
    t.string   "location"
    t.integer  "due_date_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "items", ["category_id"], :name => "index_items_on_category_id"
  add_index "items", ["due_date_id"], :name => "index_items_on_due_date_id"

end
