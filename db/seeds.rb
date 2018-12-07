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
  items = Item.create!(title: Faker::Cat.name, description: Faker::Lorem.paragraph, price: Faker::Commerce.price ,image_url: Faker::Avatar.image, user_id: 1)
  items.item_image.attach(io: File.open('app/assets/images/item_img.jpg'), filename: 'item_img.jpg', content_type: 'image/jpg')
end
