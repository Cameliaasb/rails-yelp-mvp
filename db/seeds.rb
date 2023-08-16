# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Seed your restaurant database with at least 5 valid restaurant records.
# name / address / category parmi [chinese italian japanese french belgian]
Restaurant.destroy_all

5.times do
  puts 'adding one restaurant'
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    category: Restaurant::CATEGORIES.sample
  )
  puts 'added one restaurant'
end
