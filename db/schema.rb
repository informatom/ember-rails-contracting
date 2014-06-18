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

ActiveRecord::Schema.define(version: 20140618092131) do

  create_table "consumable_items", force: true do |t|
    t.string   "contract_type"
    t.integer  "position"
    t.string   "product_number"
    t.string   "product_line"
    t.string   "description_de"
    t.string   "description_en"
    t.integer  "amount"
    t.integer  "yield"
    t.decimal  "wholesale_price"
    t.integer  "term"
    t.integer  "consumption1"
    t.integer  "consumption2"
    t.integer  "consumption3"
    t.integer  "consumption4"
    t.integer  "consumption5"
    t.integer  "consumption6"
    t.integer  "balance6"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contract_item_id"
  end

  add_index "consumable_items", ["contract_item_id"], name: "index_consumable_items_on_contract_item_id"

  create_table "contract_items", force: true do |t|
    t.integer  "position"
    t.integer  "term"
    t.date     "startdate"
    t.string   "product_number"
    t.string   "description_de"
    t.string   "description_en"
    t.integer  "amount"
    t.string   "unit"
    t.integer  "volume_bw"
    t.integer  "volume_color"
    t.integer  "marge"
    t.integer  "vat"
    t.integer  "discount_abs"
    t.integer  "monitoring_rate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "contract_id"
  end

  add_index "contract_items", ["contract_id"], name: "index_contract_items_on_contract_id"

  create_table "contracts", force: true do |t|
    t.integer  "term"
    t.date     "startdate"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
