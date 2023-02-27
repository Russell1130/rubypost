class Service < ApplicationRecord
  belongs_to :hotel

  validates :title, presence: true
  validates :description, presence: true
  validates :hotel_id, presence: true
  validates :icon, presence: true
end
