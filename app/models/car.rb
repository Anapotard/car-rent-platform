class Car < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  validates :brand, :model, :address, presence: true
  validates_numericality_of :price_per_day, :greater_than => 0
end
