# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'faker'

20.times do |item|
  items = Item.create!(title: Faker::Cat.name, description: Faker::Lorem.paragraph, price: Faker::Commerce.price ,image_url: Faker::Avatar.image)
  items.item_image.attach(io: File.open('app/assets/images/cat.png'), filename: 'cat.png', content_type: 'image/png')
end
