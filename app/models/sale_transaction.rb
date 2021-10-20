class SaleTransaction < ApplicationRecord
  belongs_to :customer
  has_many :sold_items, dependent: :destroy 
end
