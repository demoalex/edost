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

ActiveRecord::Schema.define(:version => 20100311140621) do

  create_table "orders", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "title"
    t.string   "link"
    t.text     "notes"
    t.integer  "amount",     :default => 1
    t.text     "vars"
    t.integer  "userid"
    t.integer  "status"
    t.decimal  "cost1",      :default => 0.0
    t.decimal  "cost2",      :default => 0.0
    t.decimal  "cost3",      :default => 0.0
    t.decimal  "realCost1",  :default => 0.0
    t.decimal  "realCost2",  :default => 0.0
    t.decimal  "realCost3",  :default => 0.0
    t.integer  "cycle",      :default => 0
  end

  create_table "users", :force => true do |t|
    t.string   "email",                                             :null => false
    t.string   "encrypted_password",   :limit => 40,                :null => false
    t.string   "password_salt",                                     :null => false
    t.string   "confirmation_token",   :limit => 20
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "reset_password_token", :limit => 20
    t.string   "remember_token",       :limit => 20
    t.datetime "remember_created_at"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "role",                               :default => 0
    t.string   "name"
    t.string   "phone"
    t.string   "address"
    t.string   "postcode"
  end

  add_index "users", ["confirmation_token"], :name => "index_users_on_confirmation_token", :unique => true
  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
