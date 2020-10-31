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

file = URI.open('https://media-exp1.licdn.com/dms/image/C4D35AQG8YLjk39lfTA/profile-framedphoto-shrink_400_400/0?e=1604228400&v=beta&t=kyhzd61YhUMRxdCrvlmeMMhtRg4QcI7h5JoPHMlqRDM')
user_1.photo.attach(io: file, filename: 'guillem_avatar.jpeg', content_type: 'image/jpeg')

puts "Created the first user: #{user_1.full_name}!"

user_2 = User.create!(
  full_name: 'Antonio Morales',
  email: 'amoralesrosa@gmail.com',
  password: 123456,
  username: 'Reina de las Flores'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_2.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

puts "Created the second user #{user_2.full_name}!"

user_3 = User.create!(
  full_name: 'Núria López',
  email: 'nurialopez@gmail.com',
  password: 123456,
  username: 'La Gordi',
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_3.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_4 = User.create!(
  full_name: 'Ramon Delás',
  email: 'ramondelas@hotmail.com',
  password: 123456,
  username: 'Ramonet'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_4.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_5 = User.create!(
  full_name: 'Laura López',
  email: 'lauralopez@gmail.com',
  password: 'laurita55',
  username: 'DarkCitizzen'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_5.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

puts puts "Created the second user #{user_3.full_name}, #{user_4.full_name} and #{user_5.full_name}!"

user_6 = User.create!(
  full_name: 'Marc Díaz',
  email: 'marc_diaz_96@gmail.com',
  password: 'elmarquitoooo_96!',
  username: '_itsmarcdiaz'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_6.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_7 = User.create!(
  full_name: 'Sabine Holmann',
  email: 'sabine_holmann@yahoo.com',
  password: 'Bine_Kreuzberg',
  username: 'kreuzberg'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_7.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_8 = User.create!(
  full_name: 'Sara Membrillo',
  email: 'sarikaaaa96@hotmail.com',
  password: 'Sarika',
  username: 'lasariikaaa_conRitmicoo'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_8.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_9 = User.create!(
  full_name: 'Helena Vilanova',
  email: 'helena_vila5@gmail.com',
  password: '_justhelenavila',
  username: 'helenitahelenavila55'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_9.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_10 = User.create!(
  full_name: 'Manel Sapés',
  email: 'manel2000@gmail.com',
  password: 'manel_sapes',
  username: 'maneletsapes2000'
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_10.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

puts "Created the second user #{user_6.full_name}, #{user_7.full_name}, #{user_8.full_name}, #{user_9.full_name}, #{user_10.full_name}!"

puts "We're done :)"

