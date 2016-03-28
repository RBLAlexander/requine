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

ActiveRecord::Schema.define(version: 20160328003204) do

  create_table "items", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.boolean  "accepted"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "offer_id",    limit: 4
    t.integer  "trade_id",    limit: 4
  end

  add_index "items", ["offer_id"], name: "index_items_on_offer_id", using: :btree
  add_index "items", ["trade_id"], name: "index_items_on_trade_id", using: :btree

  create_table "offers", force: :cascade do |t|
    t.string   "title",       limit: 255
    t.text     "description", limit: 65535
    t.integer  "cash_adjust", limit: 4
    t.boolean  "seen"
    t.string   "uri",         limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "trade_id",    limit: 4
  end

  add_index "offers", ["trade_id"], name: "index_offers_on_trade_id", using: :btree

  create_table "trades", force: :cascade do |t|
    t.string   "title",              limit: 255
    t.text     "description",        limit: 65535
    t.boolean  "accept_cash_adjust"
    t.boolean  "premium"
    t.integer  "times_viewed",       limit: 4
    t.string   "uri",                limit: 255
    t.string   "tags",               limit: 255
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  add_foreign_key "items", "offers"
  add_foreign_key "items", "trades"
  add_foreign_key "offers", "trades"
end
