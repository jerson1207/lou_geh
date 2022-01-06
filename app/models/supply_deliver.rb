class SupplyDeliver < ApplicationRecord
  validates :date, presence: true
  belongs_to :company
  has_many :items, dependent: :destroy 
end
