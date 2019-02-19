class Review < ApplicationRecord
  belongs_to :animation, dependent: :destroy
  belongs_to :user, dependent: :destroy
  validates :content, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
