# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

50.times do
  restaurant = Restaurant.create!(
    name: Faker::Games::ElderScrolls.name,
    address: Faker::Movies::StarWars.planet,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts 'Creating your restaurants!'
  5.times do
    review = Review.create!(
      rating rand(1..5),
      content: Faker::TvShows::DumbAndDumber.quote,
      restaurant_id: restaurant.id
    )
end

puts 'Behold!'
