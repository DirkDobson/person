require "faker"
include Faker


def seed
5.times do
  Animal.create(
    name: Faker::Name.name,
    age: Faker::Number.number(2),
    #hair_color: Faker::TheThickOfIt.hair_color,
    #eye_color: Faker::SwordArtOnline.eye_color,
    #gender: Faker::Zelda.gender,
    #alive: Faker::Internet.alive
  )

end

5.times do
  Plant.create(
    name: Faker::Name.name
    
  )

end

end

seed


# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
