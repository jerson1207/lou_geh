ActiveRecord::Schema.define(version: 2021_10_19_224632) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "contact"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "item_inventories", force: :cascade do |t|
    t.integer "quantity", default: 0
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_item_inventories_on_product_id"
  end

  create_table "items", force: :cascade do |t|
    t.integer "quantity"
    t.decimal "unit_per_cost"
    t.integer "supply_deliver_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_items_on_product_id"
    t.index ["supply_deliver_id"], name: "index_items_on_supply_deliver_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sale_transactions", force: :cascade do |t|
    t.integer "customer_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["customer_id"], name: "index_sale_transactions_on_customer_id"
  end

  create_table "sold_items", force: :cascade do |t|
    t.integer "quantity"
    t.decimal "price_per_unit"
    t.integer "sale_transaction_id", null: false
    t.integer "product_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["product_id"], name: "index_sold_items_on_product_id"
    t.index ["sale_transaction_id"], name: "index_sold_items_on_sale_transaction_id"
  end

  create_table "supply_delivers", force: :cascade do |t|
    t.integer "company_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["company_id"], name: "index_supply_delivers_on_company_id"
  end

  add_foreign_key "item_inventories", "products"
  add_foreign_key "items", "products"
  add_foreign_key "items", "supply_delivers"
  add_foreign_key "sale_transactions", "customers"
  add_foreign_key "sold_items", "products"
  add_foreign_key "sold_items", "sale_transactions"
  add_foreign_key "supply_delivers", "companies"
end
