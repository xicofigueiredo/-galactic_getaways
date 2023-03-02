class Astro < ApplicationRecord
  belongs_to :user
  has_many :bookings
  # include PgSearch::Model
  # pg_search_scope :search_by_name_and_description_and_category,
  # against: [ :name, :description ],
  # using: {
  #   tsearch: { prefix: true } # <-- now `superman batm` will return something!
  # }
  enum :category, { planet: 0, commet:
    1, asteroid: 2, star: 3, galaxy: 4 }
  validates :name, :description, :daily_price, :category, presence: true
  has_many_attached :photos
end
