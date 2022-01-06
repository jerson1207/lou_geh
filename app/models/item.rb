class Item < ApplicationRecord

  belongs_to :supply_deliver
  belongs_to :product
  # validates :product_id, presence: true
  validates :quantity, presence: true
  validates :unit_per_cost, presence: true
end
