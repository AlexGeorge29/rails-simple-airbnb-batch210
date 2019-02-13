# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Cleaning Databas"
  Flat.destroy_all

puts "generating database"

4.times do
Flat.create!(
  name: Faker::FunnyName.name,
  address: Faker::Address.full_address,
  description: Faker::Lorem.paragraph,
  price_per_night: (1..10).to_a.sample * 100,
  number_of_guest: (1..10).to_a.sample
)
end
