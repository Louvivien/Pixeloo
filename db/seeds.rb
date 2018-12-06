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

#Item.destroy_all
#User.destroy_all
#Category.destroy_all



############ Seed des images
=begin
Image.create(
  title: "boitier nikon d300s",
  img_url: "app/assets/images/boitiers/boitier-nikon-d300s.jpg"
  item_id: "1"
)
=end


###########  Seed Users: Un admin , un Owner, un customer, un visiteur

# un Owner
#=begin
User.create!([ {
  email: "bar@foo.fr",
  postal_code: "92500",
  username: "Proprio",
  user_type: "owner", #can have two values: owner or customer
  first_name: "John",
  last_name: "Rakoto",
  about: "amateur photo depuis quelques années, je vous propose mon matériel à la location",
  img_cin_url: "",
  password: "azerty"
}
  ]  )


# un Customer
User.create!([ {
  email: "yeah@foobar.fr",
  postal_code: "92500",
  username: "locataire",
  user_type: "customer", #can have two values: owner or customer
  first_name: "pixoo",
  last_name: "Pixeloo",
  about: "Je souhaite tester du matériel à la location",
  img_cin_url: "",
  password: "azerty"
}
  ]  )

# administrateur
  User.create!([ {
    email: "Ohh@foo.fr",
    postal_code: "92500",
    username: "admin",
    superadmin_role: true,
    user_type: "", #can have two values: owner or customer
    first_name: "Pierre",
    last_name: "Rakoto",
    about: "Je suis administrateur du site",
    img_cin_url: "",
    password: "azerty"
  }
    ]  )

    # simple User: visiteur
  User.create!([ {
    email: "bar@foo.fr",
    postal_code: "92500",
    username: "visiteur",
    user_type: "", #can have two values: owner or customer
    first_name: "John",
    last_name: "Rakoto",
    about: "Je decouvre Pixeloo, ouais pas mal!",
    img_cin_url: "",
    password: "azerty"
}
  ]  )
############ Seed des Items

Item.create!(
  title: "Nikon d300", 
  description: "Boitier reflex Aps-c", 
  price: "15",
  user_id: "1",
  category_id: "1",
  image_url: "app/assets/images/boitiers/boitier-nikon-d300s.jpg"
  )



 # =end
########### Seed Categories
#todo: creation model