require "faker"
include Faker

5.times do
  AnimalDetail.create(
    name: Faker::Name.name,
    age: Faker::Number.number(2),
    hair_color: Faker::Name.hair_color,
    eye_color: Faker::Name.eye_color,
    gender: Faker::Internet.gender,
    alive: Faker::Internet.alive
  )

end




# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
