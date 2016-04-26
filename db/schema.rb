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

ActiveRecord::Schema.define(version: 20140208234416) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: true do |t|
    t.string  "address1"
    t.string  "address2"
    t.string  "company"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
  end

  create_table "addresses_users", id: false, force: true do |t|
    t.integer "address_id", null: false
    t.integer "user_id",    null: false
  end

  add_index "addresses_users", ["address_id"], name: "index_addresses_users_on_address_id", using: :btree
  add_index "addresses_users", ["user_id"], name: "index_addresses_users_on_user_id", using: :btree

  create_table "appellations", force: true do |t|
    t.string   "name",       null: false
    t.integer  "region_id",  null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", id: false, force: true do |t|
    t.integer  "wine_id",    null: false
    t.integer  "user_id",    null: false
    t.integer  "quantity",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "carts", ["user_id"], name: "index_carts_on_user_id", using: :btree
  add_index "carts", ["wine_id"], name: "index_carts_on_wine_id", using: :btree

  create_table "club_orders", id: false, force: true do |t|
    t.integer  "purchase_id", null: false
    t.integer  "user_id",     null: false
    t.boolean  "fulfilled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "club_orders", ["purchase_id"], name: "index_club_orders_on_purchase_id", using: :btree
  add_index "club_orders", ["user_id"], name: "index_club_orders_on_user_id", using: :btree

  create_table "grapes", force: true do |t|
    t.string   "varietal",   null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orders", id: false, force: true do |t|
    t.integer  "purchase_id", null: false
    t.integer  "user_id",     null: false
    t.boolean  "fulfilled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["purchase_id"], name: "index_orders_on_purchase_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "purchases", id: false, force: true do |t|
    t.integer  "wine_id",    null: false
    t.integer  "user_id",    null: false
    t.integer  "quantity"
    t.boolean  "fulfilled"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "purchases", ["user_id"], name: "index_purchases_on_user_id", using: :btree
  add_index "purchases", ["wine_id"], name: "index_purchases_on_wine_id", using: :btree

  create_table "regions", force: true do |t|
    t.string   "name",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions", force: true do |t|
    t.string   "name"
    t.integer  "monthly_cost"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "subscriptions_users", id: false, force: true do |t|
    t.integer "subscription_id", null: false
    t.integer "user_id",         null: false
  end

  add_index "subscriptions_users", ["subscription_id"], name: "index_subscriptions_users_on_subscription_id", using: :btree
  add_index "subscriptions_users", ["user_id"], name: "index_subscriptions_users_on_user_id", using: :btree

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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "wineries", force: true do |t|
    t.string   "name",           null: false
    t.integer  "appellation_id", null: false
    t.integer  "region_id",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "wines", force: true do |t|
    t.integer  "vintage",             null: false
    t.integer  "winery_id",           null: false
    t.integer  "grape_id",            null: false
    t.integer  "alcohol_percentage"
    t.integer  "serving_temperature"
    t.integer  "sweetness"
    t.integer  "acidity"
    t.integer  "tanin"
    t.integer  "fruit"
    t.integer  "body"
    t.string   "category_type",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price",               null: false
  end

end
