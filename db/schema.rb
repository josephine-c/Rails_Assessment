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

ActiveRecord::Schema.define(version: 2019_04_30_051542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "contacts", force: :cascade do |t|
    t.string "contactable_type"
    t.bigint "contactable_id"
    t.text "address"
    t.string "phone"
    t.string "fax"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["contactable_type", "contactable_id"], name: "index_contacts_on_contactable_type_and_contactable_id"
  end

  create_table "deliveries", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_deliveries_on_listing_id"
    t.index ["user_id"], name: "index_deliveries_on_user_id"
  end

  create_table "listings", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "shop_id"
    t.integer "status"
    t.integer "total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_listings_on_shop_id"
    t.index ["user_id"], name: "index_listings_on_user_id"
  end

  create_table "listings_products", force: :cascade do |t|
    t.bigint "listing_id"
    t.bigint "product_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_listings_products_on_listing_id"
    t.index ["product_id"], name: "index_listings_products_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "shop_id"
    t.string "name"
    t.integer "stock"
    t.integer "size"
    t.text "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_products_on_shop_id"
  end

  create_table "shops", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "listing_id"
    t.text "stripe_verification"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["listing_id"], name: "index_transactions_on_listing_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "deliveries", "listings"
  add_foreign_key "deliveries", "users"
  add_foreign_key "listings", "shops"
  add_foreign_key "listings", "users"
  add_foreign_key "listings_products", "listings"
  add_foreign_key "listings_products", "products"
  add_foreign_key "products", "shops"
  add_foreign_key "transactions", "listings"
end
