# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'

puts 'Destroying all the data...'

User.destroy_all
Post.destroy_all
Comment.destroy_all

puts 'Creating new data'

user_1 = User.create!(
  full_name: 'Guillem Delás',
  email: 'guillemdelas@hotmail.com',
  password: 123456,
  username: 'WeirdoQueen55',
  admin: true
  )

puts "Created the first user: #{user_1.full_name}!"

user_2 = User.new(
  full_name: 'Antonio Morales',
  email: 'amoralesrosa@gmail.com',
  password: 123456,
  username: 'Reina de las Flores'
  )

user_2.save!

puts "Created the second user #{user_2.full_name}!"

puts "We're done :)"

