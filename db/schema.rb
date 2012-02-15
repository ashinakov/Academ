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

ActiveRecord::Schema.define(:version => 20120110152234) do

  create_table "chairs", :force => true do |t|
    t.integer  "number"
    t.integer  "faculty_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faculties", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "groups", :force => true do |t|
    t.string   "number"
    t.integer  "faculty_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "f_name"
    t.string   "s_name"
    t.string   "l_name"
    t.integer  "group_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teachers", :force => true do |t|
    t.string   "f_name"
    t.string   "s_name"
    t.string   "l_name"
    t.string   "login"
    t.string   "password"
    t.integer  "chair_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "terms", :force => true do |t|
    t.string   "name"
    t.string   "short_name"
    t.integer  "year"
    t.boolean  "current"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "s_name"
    t.string   "l_name"
    t.string   "login",                     :limit => 40
    t.string   "f_name",                    :limit => 100, :default => ""
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
    t.integer  "role"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

  create_table "wishes", :force => true do |t|
    t.integer  "user_id"
    t.integer  "day"
    t.integer  "lesson"
    t.integer  "term_id"
    t.boolean  "week"
    t.boolean  "even"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
