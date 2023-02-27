class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :hotel

  scope :ordering, -> { order('created_at DESC') }
end
