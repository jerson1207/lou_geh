class CreateCompanies < ActiveRecord::Migration[6.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :contact
      t.string :address
      # t.references :supply_delivers, null: false, foreign_key: true

      t.timestamps
    end
  end
end
