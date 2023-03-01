class Astro < ApplicationRecord
  belongs_to :user
  has_many :bookings

  enum :category, { planet: 0, commet: 1, asteroid: 2, star: 3, galaxy: 4 }
  validates :name, :description, :daily_price, :category, presence: true
end
