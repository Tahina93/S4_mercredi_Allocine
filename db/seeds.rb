# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
Movie.destroy_all
100.times do
  film = Movie.create!(name: Faker::Movie.quote, year: Faker::Date.between(119.years.ago, 1.years.from_now), genre: "comedie", synopsis: Faker::Lorem.paragraph, director: Faker::Movies::HarryPotter.character, allocine_rating: Faker::Number.within(0.0..5.0).round(1), my_rating: nil, already_seen: false)
end