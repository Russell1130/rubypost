class Hotel < ApplicationRecord
  has_many :services, dependent: :destroy

  has_many :bookings
  has_many :users, through: :bookings

  validates :name, presence: true
  validates :description, presence: true
  validates :price, presence: true
  validates :location, presence: true
end
