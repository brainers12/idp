require 'faker'

# Seed data for User model
200.times do
  User.create!(
    name: Faker::Name.name,
    email: Faker::Internet.email
  )
end

# Seed data for Post model
User.all.each do |user|
  rand(4..8).times do
    user.posts.create!(
      title: Faker::Lorem.sentence,
      body: Faker::Lorem.paragraphs(number: rand(1..5)).join("\n\n")
    )
  end
end

# Seed data for Comment model
Post.all.each do |post|
  rand(2..5).times do
    post.comments.create!(
      body: Faker::Lorem.sentence,
      user: User.all.sample
    )
  end
end




puts "Database seeding completed!"