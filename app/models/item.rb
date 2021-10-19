class Item < ApplicationRecord
  belongs_to :supply_deliver
  belongs_to :product
end
