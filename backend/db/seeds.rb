puts "🌱 Seeding spices..."

# Seed your database here
# create some pets
require 'faker'

# Create users
10.times do
  User.create(
    username: Faker::Internet.username,
    email: Faker::Internet.email,
    password: Faker::Internet.password
  )
end

# Create pets for each user
User.all.each do |user|
  rand(1..5).times do
    user.pets.create(
      name: Faker::Creature::Dog.name,
      breed: Faker::Creature::Dog.breed,
      age: rand(1..15)
    )
  end
end


puts "✅ Done seeding!"
