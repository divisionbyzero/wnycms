# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100113040817) do

  create_table "pages", :force => true do |t|
    t.string   "title"
    t.text     "body"
    t.string   "category"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug",       :null => false
  end

  add_index "pages", ["slug"], :name => "index_pages_on_slug"

  create_table "users", :force => true do |t|
    t.string   "alias",               :limit => 16
    t.string   "name",                :limit => 64
    t.string   "email",                                             :null => false
    t.string   "crypted_password",                                  :null => false
    t.string   "password_salt",                                     :null => false
    t.string   "persistence_token",                                 :null => false
    t.string   "single_access_token",                               :null => false
    t.string   "perishable_token",                  :default => "", :null => false
    t.integer  "login_count",                       :default => 0,  :null => false
    t.integer  "failed_login_count",                :default => 0,  :null => false
    t.datetime "last_request_at"
    t.datetime "current_login_at"
    t.datetime "last_login_at"
    t.string   "current_login_ip"
    t.string   "last_login_ip"
    t.boolean  "system"
    t.text     "about"
    t.text     "bio"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], :name => "index_users_on_email"
  add_index "users", ["perishable_token"], :name => "index_users_on_perishable_token"

end
