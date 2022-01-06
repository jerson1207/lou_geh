class AddDateToSupplyDelivers < ActiveRecord::Migration[6.1]
  def change
    add_column :supply_delivers, :date, :date, default: Date.today
  end
end
