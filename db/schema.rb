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

ActiveRecord::Schema.define(version: 20170115202440) do

  create_table "line_items", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "variant_id"
    t.integer  "quantity"
    t.decimal  "price",      precision: 8, scale: 2
    t.decimal  "total",      precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["order_id"], name: "index_line_items_on_order_id"
    t.index ["variant_id"], name: "index_line_items_on_variant_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string   "email"
    t.string   "state",                              default: "cart"
    t.decimal  "total",      precision: 8, scale: 2
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
    t.index ["state"], name: "index_orders_on_state"
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "base_sku"
    t.decimal  "base_price",  precision: 8, scale: 2
    t.text     "description"
    t.string   "image"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  create_table "variants", force: :cascade do |t|
    t.integer  "product_id"
    t.string   "name"
    t.string   "sku"
    t.decimal  "price",      precision: 8, scale: 2
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
    t.index ["product_id"], name: "index_variants_on_product_id"
  end

end
