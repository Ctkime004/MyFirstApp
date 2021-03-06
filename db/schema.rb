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

ActiveRecord::Schema.define(:version => 20131016041321) do

  create_table "emails", :force => true do |t|
    t.integer  "sends"
    t.integer  "delivered"
    t.integer  "opens"
    t.integer  "clicks"
    t.integer  "conversions"
    t.decimal  "delivery_percentage"
    t.decimal  "open_percentage"
    t.decimal  "click_percentage"
    t.decimal  "open_to_click_percentage"
    t.decimal  "conversion_percentage"
    t.datetime "created_at",               :null => false
    t.datetime "updated_at",               :null => false
    t.integer  "experiment_id"
    t.string   "option_title"
  end

  create_table "experiments", :force => true do |t|
    t.text     "title"
    t.date     "startdate"
    t.date     "stopdate"
    t.string   "experimenttype"
    t.text     "details"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "user_id"
    t.string   "status"
  end

  add_index "experiments", ["user_id"], :name => "index_experiments_on_user_id"

  create_table "ppc_ad_copies", :force => true do |t|
    t.integer  "Impressions"
    t.integer  "Clicks"
    t.integer  "Conversions"
    t.decimal  "CPC"
    t.datetime "created_at",            :null => false
    t.datetime "updated_at",            :null => false
    t.integer  "experiment_id"
    t.string   "title"
    t.string   "line_1"
    t.string   "line_2"
    t.string   "display_url"
    t.string   "landing_page_url"
    t.decimal  "click_percentage"
    t.decimal  "conversion_percentage"
    t.decimal  "total_cost"
    t.decimal  "cost_per_conversion"
    t.string   "option_title"
  end

  add_index "ppc_ad_copies", ["experiment_id"], :name => "index_ppc_ad_copies_on_experiment_id"

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "user_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
