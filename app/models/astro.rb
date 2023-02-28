class Astro < ApplicationRecord
  belongs_to :user
  has_many :bookings

  enum :category, { Planet: 0, Commet: 1, Asteroid: 2, Star: 3, Galaxy: 4 }
  # validates :name, :description, :rating, :daily_price, presence: true
end
