class Booking < ApplicationRecord
  belongs_to :animation
  belongs_to :user

  validates :arrival_time, presence: true, uniqueness: true
  validates :departure_time, presence: true, uniqueness: true
  validates :place, presence: true
end
