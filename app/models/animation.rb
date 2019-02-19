class Animation < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, dependent: :destroy

  validates :title, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: { only_interger: true }
  validates :category, inclusion: { in: ['clown', 'dwarf', 'mermaid', 'lama', 'monkey', 'chicken', 'stripper', 'juggler', 'singer'] }
end
