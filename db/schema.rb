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

ActiveRecord::Schema.define(version: 20160413094449) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bakers", force: :cascade do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "description"
    t.string   "address"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "photo"
    t.float    "latitude"
    t.float    "longitude"
    t.float    "averagerate"
    t.integer  "user_id"
  end

  add_index "bakers", ["user_id"], name: "index_bakers_on_user_id", using: :btree

  create_table "order_lines", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "product_id"
    t.string   "special_instruction"
    t.integer  "quantity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  add_index "order_lines", ["order_id"], name: "index_order_lines_on_order_id", using: :btree
  add_index "order_lines", ["product_id"], name: "index_order_lines_on_product_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "delivery_address"
    t.date     "delivery_date"
    t.integer  "order_line_id"
    t.integer  "buyer_id"
    t.integer  "amount_cents",     default: 0,      null: false
    t.json     "payment"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.string   "state",            default: "OPEN"
    t.integer  "baker_id"
    t.string   "fullname"
    t.string   "instructions"
  end

  add_index "orders", ["baker_id"], name: "index_orders_on_baker_id", using: :btree
  add_index "orders", ["order_line_id", "buyer_id"], name: "index_orders_on_order_line_id_and_buyer_id", unique: true, using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.integer  "baker_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
    t.string   "photo"
    t.integer  "price_cents", default: 0, null: false
  end

  add_index "products", ["baker_id"], name: "index_products_on_baker_id", using: :btree

  create_table "reviews", force: :cascade do |t|
    t.string   "content"
    t.integer  "baker_id"
    t.integer  "rate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
  end

  add_index "reviews", ["baker_id"], name: "index_reviews_on_baker_id", using: :btree
  add_index "reviews", ["user_id"], name: "index_reviews_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "bakers", "users"
  add_foreign_key "order_lines", "orders"
  add_foreign_key "order_lines", "products"
  add_foreign_key "orders", "bakers"
  add_foreign_key "orders", "users"
  add_foreign_key "products", "bakers"
  add_foreign_key "reviews", "bakers"
  add_foreign_key "reviews", "users"
end
