# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "cleaning database"
Restaurant.destroy_all

categories = ["chinese", "italian", "japanese", "french", "belgian"]
10.times do
  @restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    phone_number: Faker::PhoneNumber.cell_phone_in_e164 || Faker::PhoneNumber.cell_phone || Faker::PhoneNumber.phone_number_with_country_code,
    address: Faker::Address.street_address,
    category: categories.sample
  )
  @restaurant.save!
  puts "#{@restaurant.name} created"
end
