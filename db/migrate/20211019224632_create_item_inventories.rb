class CreateItemInventories < ActiveRecord::Migration[6.1]
  def change
    create_table :item_inventories do |t|
      t.string :quantity
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end
