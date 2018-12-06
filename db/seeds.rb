# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'faker'

########### reset all ########
=begin
if Image
  Item.image.destroy_all
end
if Item
  Item.destroy_all
end
if User
  User.destroy_all
end
if category
  category.destroy_all
end
=end
############ Seed des images
=begin
Image.create(
  title: "boitier nikon d300s",
  img_url: "app/assets/images/boitiers/boitier-nikon-d300s.jpg"
  item_id: "1"
)
=end
############ Seed des Items

Item.create!(
  title: "Nikon d300", 
  description: "Boitier reflex Aps-c", 
  price: "15",
  user_id: "1"
  #category_id: "1"
  )


###########  Seed Users
=begin
User.create!([ {
  email: "bar@foo.fr",
  postal_code: "92500",
  username: "rado",
  user_type: "owner", #can have two values: owner or customer
  first_name: "Rado",
  last_name: "Rakoto",
  about: "amateur photo depuis quelques années, je vous propose mon matériel à la location",
  img_cin_url: "",
  password: "azerty"
}
  ]  )
=end
########### Seed Categories
#todo: creation model