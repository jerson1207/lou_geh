class Customer < ApplicationRecord
  validates :name, presence: true
  validates :contact, presence: true
  validates :address, presence: true
end
