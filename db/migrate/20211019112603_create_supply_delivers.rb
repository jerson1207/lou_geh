class CreateSupplyDelivers < ActiveRecord::Migration[6.1]
  def change
    create_table :supply_delivers do |t|
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
