# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

# City.destroy_all
# Dog.destroy_all
# DogSitter.destroy_all
# Stroll.destroy_all

# 10.times do
#   City.create(city_name: Faker::Address.city)
# end

# 10.times do
#     Dog.create(
#         name: Faker::FunnyName.name,
#         city_id: rand(1..10)
#     )
# end    

10.times do
    DogSitter.create(
        first_name: Faker::Name.first_name,
        last_name: Faker::Name.last_name,
        city_id: rand(1..10)
    )
end

# 10.times do
#     Stroll.create(
#        dog_id: rand(1..10),
#        dogsitter_id: rand(1..10),
#        city_id: rand(1..10)
#     )
# end