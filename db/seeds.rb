# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Astro.destroy_all

Astro.create!(
  name: "CXRT09",
  description: "Super shiny and fast",
  rating: 5,
  daily_price: 2,
  user: User.first,
  category: "commet"
)

Astro.create!(
  name: "the stone in your kidney",
  description: "You probably never want to have this! Its super painful",
  rating: 5,
  daily_price: 2,
  user: User.first,
  category: "asteroid"
)
