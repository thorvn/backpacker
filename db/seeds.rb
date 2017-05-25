# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create email: 'robot@gmail.com', username: 'robot', password: '123456'
User.create email: 'robot1@gmail.com', username: 'robot1', password: '123456'
User.create email: 'robot2@gmail.com', username: 'robot2', password: '123456'



10.times {Trip.create user_id: 1, title: Faker::Lorem.sentence, body: Faker::Lorem.paragraph, price: Faker::Number.between(50, 5000), image: Faker::Avatar.image("my-own-slug"), start_date:Faker::Date.forward(23), end_date: Faker::Date.forward(23), number_of_member: 10 }
