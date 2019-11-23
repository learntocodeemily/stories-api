# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Story.destroy_all
Comment.destroy_all

stories = [
  { name: 'Mo', text: 'Hello World' },
  { name: 'Fabien', text: 'Hello Python' },
  { name: 'Brian', text: 'Hello JS' },
  { name: 'Forrest', text: 'Hello Rails' }
]
Story.create(stories)

Story.all.each do |s|
  Comment.create(name: 'great', content: 'blahblahblahhhh', story_id: s.id)
end
