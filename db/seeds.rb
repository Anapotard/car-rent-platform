# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts 'Creating database'
Booking.destroy_all
Car.destroy_all
puts 'Database created'

20.times do
  Car.create!(
    user: User.first,
    brand: Faker::Vehicle.manufacture,
    model: Faker::Vehicle.make,
    price: rand(50..400),
    address: Faker::Address.street_address,
    year_of_production: rand(1950..2022)
  )
end

puts "Done"
