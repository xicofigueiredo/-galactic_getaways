# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Astro.destroy_all
Astro.create!(
  name: "Uranus",
  description: "Where light doesnt reach",
  daily_price: 24,
  user: User.first
)

Astro.create!(
  name: "Myanus",
  description: "Closed as the troia gates",
  daily_price: 1000,
  user: User.first
)

Astro.create!(
  name: "Heranus",
  description: "Welcome",
  daily_price: 2,
  user: User.first
)
