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

ActiveRecord::Schema.define(version: 2018_04_30_221033) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.boolean "admin", default: false
    t.string "password_hash"
    t.string "password_salt"
  end

  create_table "flights", force: :cascade do |t|
    t.string "origin"
    t.string "destination"
    t.integer "price"
  end

  create_table "order_items", force: :cascade do |t|
    t.string "order_id"
    t.integer "product_id"
    t.integer "flight_id"
    t.integer "quantity"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.integer "account_id"
  end

  create_table "products", force: :cascade do |t|
    t.integer "price"
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quotes", force: :cascade do |t|
    t.string "quote"
  end

end
