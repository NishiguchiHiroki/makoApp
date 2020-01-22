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

ActiveRecord::Schema.define(version: 2020_01_18_070328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.string "postal_code", null: false
    t.integer "prefecture_id", null: false
    t.string "city", null: false
    t.string "house_number", null: false
    t.string "building_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "boxlunches", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.text "image", null: false
    t.string "allergy"
    t.string "description", null: false
    t.text "ingredient", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "carts", force: :cascade do |t|
    t.bigint "menu_id", null: false
    t.integer "quantity"
    t.bigint "order_id", null: false
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["menu_id"], name: "index_carts_on_menu_id"
    t.index ["order_id"], name: "index_carts_on_order_id"
    t.index ["user_id"], name: "index_carts_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name", null: false
    t.string "ancestry", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drink_menus", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.text "image", null: false
    t.string "description", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "information", force: :cascade do |t|
    t.string "title", null: false
    t.text "content", null: false
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.text "image", null: false
    t.string "allergy"
    t.string "description", null: false
    t.text "ingredient", null: false
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_menus_on_category_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "menu_id"
    t.integer "quantity"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.text "image", null: false
    t.string "allergy"
    t.string "description", null: false
    t.text "ingredient", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "single_menus", force: :cascade do |t|
    t.string "name", null: false
    t.integer "price", null: false
    t.text "image", null: false
    t.string "allergy"
    t.string "description", null: false
    t.text "ingredient", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "last_name", null: false
    t.string "first_name", null: false
    t.string "last_name_kana", null: false
    t.string "first_name_kana", null: false
    t.integer "birthdate_year", null: false
    t.integer "birthdate_month", null: false
    t.integer "birthdate_day", null: false
    t.string "phone_number", null: false
    t.bigint "address_id"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_id"], name: "index_users_on_address_id"
    t.index ["email"], name: "index_users_on_email"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  add_foreign_key "carts", "menus"
  add_foreign_key "carts", "orders"
  add_foreign_key "carts", "users"
  add_foreign_key "menus", "categories"
  add_foreign_key "orders", "users"
  add_foreign_key "users", "addresses"
end
