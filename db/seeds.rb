# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

6.times do
  name = Faker::Restaurant.name
  address = Faker::Address.full_address
  phone_number = Faker::PhoneNumber.phone_number
  category = ["chinese", "italian", "japanese", "french", "belgian"].sample

  restaurant = Restaurant.create(name: name, address: address, phone_number: phone_number, category: category)
  content = Faker::Restaurant.review
  rating = rand(0..5)
  review = Review.create(rating: rating, content: content, restaurant: restaurant)


  # restaurant.reviews[0].content = Faker::Restaurant.review
  # restaurant.reviews[0].rating = rand(0..5)
  puts "Created Restaurant id: #{restaurant.id}"
end

puts "Done!"
