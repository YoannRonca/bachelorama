class Animation < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_many :reviews, dependent: :destroy

  mount_uploader :photo, PhotoUploader

  validates :title, presence: true
  validates :category, presence: true
  validates :price, presence: true, numericality: { only_interger: true }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  CATEGORIES = ['Clown', 'Dwarf', 'Mermaid', 'Llama', 'Monkey', 'Chicken', 'Stripper', 'Juggler', 'Singer', 'Magician']
end
