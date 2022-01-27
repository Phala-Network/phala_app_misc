# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_04_30_194500) do

  create_table "coin_market_charts", id: false, force: :cascade do |t|
    t.string "symbol", null: false
    t.datetime "timestamp", null: false
    t.decimal "price", null: false
    t.index ["symbol"], name: "index_coin_market_charts_on_symbol"
    t.index ["timestamp"], name: "index_coin_market_charts_on_timestamp"
  end

  create_table "states", force: :cascade do |t|
    t.string "chain"
    t.string "key", null: false
    t.boolean "visible", default: false, null: false
    t.decimal "decimal_value"
    t.bigint "integer_value"
    t.string "string_value"
    t.datetime "datetime_value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chain", "key"], name: "index_states_on_chain_and_key", unique: true
  end

end
