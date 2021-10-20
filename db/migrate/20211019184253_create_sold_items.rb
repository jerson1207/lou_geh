class CreateSoldItems < ActiveRecord::Migration[6.1]
  def change
    create_table :sold_items do |t|
      t.integer :quantity
      t.decimal :price_per_unit
      t.references :sale_transaction, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
