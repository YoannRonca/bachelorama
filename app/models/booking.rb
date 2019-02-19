class Booking < ApplicationRecord
  belongs_to :animation
  belongs_to :user

  validates :place, presence: true
end
