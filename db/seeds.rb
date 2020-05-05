# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# 10 city

10.times do
  city = City.create!(name: Faker::Address.city, zip_code: Faker::Address.zip_code)
end

# Génération de 10 users
10.times do
  user = User.create!(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, description: Faker::TvShows::GameOfThrones.quote, email: Faker::Internet.email, age: Faker::Number.within(range: 15..45), city_id: Faker::Number.within(range: 1..10))
end

# Génération de 20 gossips
20.times do
  gossip = Gossip.create!(title: Faker::Dessert.flavor, content: Faker::ChuckNorris.fact, user_id: Faker::Number.within(range: 1..10))
end
