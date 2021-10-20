class SoldItem < ApplicationRecord
  belongs_to :sale_transaction
  belongs_to :product
end
