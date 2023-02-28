class Astro < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # validates :name, :description, :rating, :daily_price, presence: true
end
