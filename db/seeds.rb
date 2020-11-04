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
  admin: true,
  about: 'Hello, my name is Guillem, a Junior Web Developer based in Barcelona!👾🧑🏽‍💻 Wanna hang out? Follow me!😃'
  )

#AVATAR
file = URI.open("https://media-exp1.licdn.com/dms/image/C4D35AQG8YLjk39lfTA/profile-framedphoto-shrink_400_400/0?e=1604595600&v=beta&t=B58ZEKmNqnPZnj9RpAxMfl1Wav5tOtxGRxF682_f9Y8")
user_1.photo.attach(io: file, filename: 'my_avatar.jpg', content_type: 'image/jpeg')

puts "Created the first user: #{user_1.full_name}: YOU, THE ADMIN!"

#NEW USER
user_2 = User.create!(
  full_name: 'Antonio Morales',
  email: 'amoralesrosa@gmail.com',
  password: 123456,
  username: 'Reina de las Flores',
  about: "Hey, I'm Antonio! Follow me!"
  )

post_1 = Post.create!(
  description: 'Yesterday🍂',
  user_id: user_2.id,
  location: "L'Hospitalet de Llobregat"
  )
# USER AVATAR
file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_2.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

# POST PICTURE
post_file = URI.open("https://source.unsplash.com/1600x900/?park")
post_1.photo.attach(io: post_file, filename: 'post_1.jpg', content_type: 'image/jpg')


puts "Created the second user #{user_2.full_name}!"

#NEW USER
user_3 = User.create!(
  full_name: 'Núria López',
  email: 'nurialopez@gmail.com',
  password: 123456,
  username: 'La Gordi',
  about: "Hey, I'm Núria! Follow me!"
  )

post_2 = Post.create!(
  description: 'I love teaching!',
  user_id: user_3.id,
  location: "Palau-solità i Plegamans"
  )

# AVATAR
file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_3.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

post_file = URI.open("https://source.unsplash.com/1600x900/?school")
post_2.photo.attach(io: post_file, filename: 'post_2.jpg', content_type: 'image/jpg')

#NEW USER
user_4 = User.create!(
  full_name: 'Ramon Delás',
  email: 'ramondelas@hotmail.com',
  password: 123456,
  username: 'Ramonet',
  about: "Hey, I'm Ramon! Follow me!"
  )

post_3 = Post.create!(
  description: 'Another day at the office',
  user_id: user_4.id,
  location: "Barcelona"
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_4.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

post_file = URI.open("https://source.unsplash.com/1600x900/?office")
post_3.photo.attach(io: post_file, filename: 'post_3.jpg', content_type: 'image/jpg')

# NEW USER
user_5 = User.create!(
  full_name: 'Laura López',
  email: 'lauralopez@gmail.com',
  password: 'laurita55',
  username: 'DarkCitizzen',
  about: "Hey, I'm Laura! Follow me!"
  )

post_4 = Post.create!(
  description: 'Yesterday in the neighborhood🏙',
  user_id: user_5.id,
  location: "Caldes de Montbui"
  )

#AVATAR
file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_5.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

#POST
post_file = URI.open("https://source.unsplash.com/1600x900/?city, neighborhood")
post_4.photo.attach(io: post_file, filename: 'post_4.jpg', content_type: 'image/jpg')

puts puts "Created the second pack of users #{user_3.full_name}, #{user_4.full_name} and #{user_5.full_name}!"

#NEW USER
user_6 = User.create!(
  full_name: 'Marc Díaz',
  email: 'marc_diaz_96@gmail.com',
  password: 'elmarquitoooo_96!',
  username: '_itsmarcdiaz',
  about: "Hey, I'm Marc! Follow me!"
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_6.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_7 = User.create!(
  full_name: 'Sabine Holmann',
  email: 'sabine_holmann@yahoo.com',
  password: 'Bine_Kreuzberg',
  username: 'kreuzberg',
  about: "Hey, Ich bin Sabine! Folgen Sie mir!"
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_7.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

#NEW USER
user_8 = User.create!(
  full_name: 'Sara Membrillo',
  email: 'sarikaaaa96@hotmail.com',
  password: 'Sarika',
  username: 'lasariikaaa_conRitmicoo',
  about: "Hey, I'm Sara! Follow me!"
  )

post_5 = Post.create!(
  description: 'Rosalía bájale!',
  location: 'Palau St. Jordi, Barcelona',
  user_id: user_8.id
  )

#AVATAR
file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_8.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

#POST
post_file = URI.open("https://source.unsplash.com/1600x900/?rosalia, concert")
post_5.photo.attach(io: post_file, filename: 'post_5.jpg', content_type: 'image/jpg')

#NEW USER
user_9 = User.create!(
  full_name: 'Helena Vilanova',
  email: 'helena_vila5@gmail.com',
  password: '_justhelenavila',
  username: 'helenitahelenavila55',
  about: "Hey, I'm Helena! Follow me!"
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_9.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

user_10 = User.create!(
  full_name: 'Manel Sapés',
  email: 'manel2000@gmail.com',
  password: 'manel_sapes',
  username: 'maneletsapes2000',
  about: "Hey! I'm Manel! Follow me!"
  )

file = URI.open('https://source.unsplash.com/1600x900/?avatar')
user_10.photo.attach(io: file, filename: 'avatar.jpeg', content_type: 'image/jpeg')

puts "Created the third pack of users #{user_6.full_name}, #{user_7.full_name}, #{user_8.full_name}, #{user_9.full_name}, #{user_10.full_name}!"

puts "We're done :)"

