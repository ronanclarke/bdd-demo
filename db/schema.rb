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

ActiveRecord::Schema.define(version: 20140324083043) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authentications", force: true do |t|
    t.integer  "user_id"
    t.string   "auth_type"
    t.string   "provider"
    t.string   "uid"
    t.string   "username"
    t.string   "token"
    t.string   "refresh_token"
    t.boolean  "expires"
    t.datetime "expires_at"
    t.string   "api_key"
  end

  create_table "connectors", force: true do |t|
    t.integer  "popup_id"
    t.integer  "authentication_id"
    t.text     "settings"
    t.boolean  "active"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "connector_type"
  end

  create_table "leads", force: true do |t|
    t.integer  "popup_id"
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "redeem_token"
    t.datetime "redeemed_at"
    t.string   "source_url"
  end

  create_table "payment_notifications", force: true do |t|
    t.integer  "plan_id"
    t.integer  "subscription_id"
    t.string   "status"
    t.string   "transaction_id"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", force: true do |t|
    t.string   "description"
    t.string   "image"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "is_stock_image"
  end

  create_table "plan_prices", force: true do |t|
    t.integer  "plan_id"
    t.string   "currency"
    t.float    "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", force: true do |t|
    t.string   "code"
    t.string   "name"
    t.text     "features"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "popup_metrics", force: true do |t|
    t.string   "metric_type"
    t.integer  "popup_id"
    t.string   "client_token"
    t.text     "extras"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "browser"
    t.string   "user_agent"
  end

  create_table "popups", force: true do |t|
    t.integer  "user_id"
    t.string   "title"
    t.string   "token"
    t.string   "widget_type"
    t.text     "widget_config"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscription_transactions", force: true do |t|
    t.integer  "subscription_id"
    t.string   "status"
    t.text     "params"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: true do |t|
    t.integer  "user_id"
    t.integer  "plan_id"
    t.datetime "valid_from"
    t.datetime "expires"
    t.string   "status"
    t.float    "price"
    t.string   "currency"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
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
    t.boolean  "is_super_user"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
