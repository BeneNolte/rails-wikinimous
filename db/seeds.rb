# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TODO: Write a seed to insert 100 posts in the database
# Faker::Post.unique.name

# puts 'Creating 10 fake posts...'
10.times do
  post = Article.new(
    title: Faker::Book.title,
    content: Faker::Twitter.status(include_user: false)[:text],
  )
  post.save!
end
# puts 'Finished!'
