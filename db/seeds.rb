# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


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
=begin
# un Owner

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
    email: "barbar@footer.fr",
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
  user_id: "4",
  category_id: "1",
  image_url: "app/assets/images/boitiers/boitier-nikon-d300s.jpg"
  )
=end
  Item.create!(
    title: "Canon eos650", 
    description: "Boitier reflex Aps-c", 
    price: "20",
    user_id: "4",
    category_id: "1",
    image_url: "app/assets/images/boitiers/boitier-canon-eos-650.jpg"
    )

    Item.create!(
      title: "Nikon 85mm", 
      description: "Objectif lumineux 85mm f1.8", 
      price: "25",
      user_id: "4",
      category_id: "2",
      image_url: "app/assets/images/objectifs/objectif-nikon-nikkor-afs-85mm-f18-g.jpg"
      )

########### Seed Categories:

user = User.create!(email: "wesh1@wbienouquoi8457.fr", password: "azerty")

1.times do |item|

items = Item.create!(title: "canon eos-5d", description: "boitier reflex full frame", price: "40€", user_id: "1", category_id: "1", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/canon-eos-5d.jpg'), filename: 'canon-eos-5d.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon eos-6d", description: "boitier reflex full frame", price: "45€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/canon-eos-6d.jpg'), filename: 'canon-eos-6d.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon eos-650", description: "boitier reflex aps-c", price: "35€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/canon-eos-650.jpg'), filename: 'canon-eos-650.jpg', content_type: 'image/jpg')

items = Item.create!(title: "lumix DC-GH5EF", description: "boitier numérique lumix aps-c", price: "35€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/lumix DC-GH5EF.png'), filename: 'lumix DC-GH5EF.png', content_type: 'image/png')

items = Item.create!(title: "lumix DC-GH5LEF", description: "boitier numérique lumix aps-c", price: "30€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/lumix DC-GH5LEF.png'), filename: 'lumix DC-GH5LEF.png', content_type: 'image/png')

items = Item.create!(title: "lumix DC-GH5SE", description: "boitier numérique lumix aps-c", price: "30€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/lumix DC-GH5SE.png'), filename: 'lumix DC-GH5SE.png', content_type: 'image/png')

items = Item.create!(title: "nikon D3500", description: "boitier nikon aps-c", price: "35€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/nikon D3500.png'), filename: 'nikon D3500.png', content_type: 'image/png')

items = Item.create!(title: "nikon D600",description: "boitier full frame nikon", price: "35€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/nikon-d600.jpg'), filename: 'nikon-d600.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Leica-C-Lux-Midnight", description: "boitier Leica numérique", price: "60€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/Leica-C-Lux-Midnight.jpg'), filename: 'Leica-C-Lux-Midnight.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Leica-D-Lux-7", description: "boitier Leica numérique", price: "70€", user_id: "1", category_id: "1", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/Leica-D-Lux-7.jpg'), filename: 'Leica-D-Lux-7.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Leica-V-LUX", description: "boitier leica numérique", price: "85€", user_id: "1", category_id: "1", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/boitier/LEICA-V-LUX.jpg'), filename: 'LEICA-V-LUX.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-17-70mm-f28-4-dc-macro-os-hsm", description: "objectif zoom sigma f2.8", price: "15€", user_id: "1", category_id: "3", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg'), filename: '17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-18-35mm-f18-dc-hsm", description: "objectif sigma zoom grande ouverture ", price: "2€", user_id: "1", category_id: "3", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/location-objectif-sigma-18-35mm-f18-dc-hsm.jpg'), filename: 'location-objectif-sigma-18-35mm-f18-dc-hsm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-35mm-f14-dg-hsm", description: "objectif à focale fixe sigma grande ouverture", price: "15€", user_id: "1", category_id: "3", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/sigma-35mm-f14-dg-hsm.jpg'), filename: 'sigma-35mm-f14-dg-hsm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon-ef-50mm-f12-l-usm", description: "objectif canon lumineux à focale fixe", price: "30€", user_id: "1", category_id: "3", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/canon-ef-50mm-f12-l-usm.jpg'), filename: 'canon-ef-50mm-f12-l-usm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon-ef-100mm-f28-l-macro-is-usm", description: "objectif à focale fixe canon", price: "35€", user_id: "1", category_id: "3", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/canon-ef-100mm-f28.jpg'), filename: 'canon-ef-100mm-f28.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon-ts-e-24mm-f35-l-ii", description: "objectif à focale fixe canon", price: "45€", user_id: "1", category_id: "3", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/canon-ts-e-24mm-f35.jpg'), filename: 'canon-ts-e-24mm-f35.jpg', content_type: 'image/jpg')

items = Item.create!(title: "nikkor afp_dx_70_300", description: "objectif zoom nikon", price: "15€", user_id: "1", category_id: "3", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/nikkor_afp_dx_70_300.png'), filename: 'nikkor_afp_dx_70_300.png', content_type: 'image/png')

items = Item.create!(title: "nikkor", description: "objectif nikon", price: "30€", user_id: "1", category_id: "3", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/nikon.png'), filename: 'nikon.png', content_type: 'image/png')

items = Item.create!(title: "lumix 45-200", description: "objectif zoom lumix", price: "20€", user_id: "1", category_id: "3", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/lumix45-200.png'), filename: 'lumix45-200.png', content_type: 'image/png')

items = Item.create!(title: "lumix 42-600", description: "zoom lumix", price: "35€", user_id: "1", category_id: "3", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/lumix42-600.png'), filename: 'lumix42-600.png', content_type: 'image/png')

items = Item.create!(title: "lumix 43-600", description: "zoom lumix", price: "25€", user_id: "1", category_id: "3", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/objectifs/lumix 43-600.png'), filename: 'lumix 43-600.png', content_type: 'image/png')

items = Item.create!(title: "aputure-ls-mini-20d-148", description: "flash", price: "45€", user_id: "1", category_id: "2", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/aputure-ls-mini-20d-148.jpg'), filename: 'aputure-ls-mini-20d-148.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Fresnel-HMI-4000w-Arri-D40", description: "lumière continue", price: "15€", user_id: "1", category_id: "2", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/Fresnel-HMI-4000w-Arri-D40.png'), filename: 'Fresnel-HMI-4000w-Arri-D40.png', content_type: 'image/png')

items = Item.create!(title: "idv-f50-fresnel-7ab", description: "lumière continue", price: "35€", user_id: "1", category_id: "2", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/idv-f50-fresnel-led-ultra-compact-7ab.jpg'), filename: 'idv-f50-fresnel-led-ultra-compact-7ab.jpg', content_type: 'image/jpg')

items = Item.create!(title: "skylite-900fd-5600k-940", description: "lumière continue", price: "20€", user_id: "1", category_id: "2", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/skylite-900fd-5600k-940.jpg'), filename: 'skylite-900fd-5600k-940.jpg', content_type: 'image/jpg')

items = Item.create!(title: "mandarine", description: "éclairage continu", price: "15€", user_id: "1", category_id: "2", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/mandarine.jpeg'), filename: 'mandarine.jpeg', content_type: 'image/jpeg')

#items = Item.create!(title: "PROFOTO-Cine-Reflect-T7BM", description: a, price: "30€", user_id: "1", category_id: "2", image_url: "wesh")
 #items.item_image.attach(io: File.open('app/assets/images/éclairage/PROFOTO-Cine-Reflect-T7BM_sld.jpg'), filename: 'PROFOTO-Cine-Reflect-T7BM_sld.jpg', content_type: 'image/jpg')

#items = Item.create!(title: "Blonde", description: a, price: "20€", user_id: "1", category_id: "2",image_url: "wesh")
 #items.item_image.attach(io: File.open('app/assets/images/éclairage/blonde.jpg'), filename: 'blonde.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon speedlite-430", description: "flash cobra", price: "20€", user_id: "1", category_id: "2", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/canonspeedlite-430.png'), filename: 'canonspeedlite-430.png', content_type: 'image/png')

items = Item.create!(title: "canon speedlite-470", description: "flash cobra", price: "25€", user_id: "1", category_id: "2", image_url: "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/canon speedlite-470.png'), filename: 'canon speedlite-470.png', content_type: 'image/png')

items = Item.create!(title: "canon speedlite-600", description: "flash cobra", price: "30€", user_id: "1", category_id: "2", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/canonspeedlite-600.png'), filename: 'canonspeedlite-600.png', content_type: 'image/png')

#items = Item.create!(title: "nikon76683351",description: a, price: "15€", user_id: "1", category_id: "2", image_url:  "wesh")
 #items.item_image.attach(io: File.open('app/assets/images/éclairage/nikon76683351.png'), filename: 'nikon76683351.png', content_type: 'image/png')

#items = Item.create!(title: "nikon1188724895", description: a, price: "2€", user_id: "1", category_id: "2", image_url: "wesh" )
 #items.item_image.attach(io: File.open('app/assets/images/éclairage/nikon1188724895.png'), filename: 'nikon1188724895.png', content_type: 'image/png')

items = Item.create!(title: "nikon-speedlight-sb5000", description: "flash cobra nikon", price: "25€", user_id: "1", category_id: "2", image_url:  "wesh")
 items.item_image.attach(io: File.open('app/assets/images/éclairage/nikon-speedlight-sb5000.png'), filename: 'nikon-speedlight-sb5000.png', content_type: 'image/png')

end
