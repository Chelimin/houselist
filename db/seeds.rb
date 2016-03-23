# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
Post.destroy_all
Category.destroy_all

[
 {
   user_name: "User1",
   email: "user1@mail.com",
   password: "password",
   password_confirmation: "password",
 },
 {
   user_name: "User2",
   email: "user2@mail.com",
   password: "password",
   password_confirmation: "password",
 },
 {
   user_name: "User3",
   email: "user3@mail.com",
   password: "password",
   password_confirmation: "password",
 },
 {
   user_name: "admin",
   email: "admin@mail.com",
   password: "password",
   password_confirmation: "password",
   admin: true
 }
].each do |user|
 User.create(user)
end

[
  {name: "Housing"},
  {name: "Jobs"},
  {name: "For Sale"}
].each do |category|
Category.create(category)
end

[
  {
  user_id: 1,
  category_id: 1,
  title: "Room for rent",
  description: "Orchard Road $8000/month",
  image:"https://www.dropbox.com/s/hpyr79ik0fnp6n1/bedroom.jpg?dl=0",
  email: "hello@mail.com",
  phone: 123
},
  {
  user_id: 1,
  category_id: 2,
  title: "Housekeeping",
  description: "Jurong, $20/hour",
  image:"https://www.dropbox.com/s/j4opf7a1vqz48np/kitchen.jpg?dl=0",
  email: "hello@mail.com",
  phone: 123
},
  {
  user_id: 1,
  category_id: 3,
  title: "Furniture for sale",
  description: "Living room set at $5000",
  image:"https://www.dropbox.com/s/hc1fbfsdxbaj4g8/livingroom.jpg?dl=0",
  email: "hello@mail.com",
  phone: 123
  }
].each do |post|
Post.create(post)
end
