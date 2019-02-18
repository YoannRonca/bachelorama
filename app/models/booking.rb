class Booking < ApplicationRecord
  has_many :animations
  validates :name,presence: true, uniqueness: true
end
