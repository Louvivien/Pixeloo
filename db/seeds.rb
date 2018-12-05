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






a = "In partes multatione vel militarium fovisse fovisse damnabatur suos postulatus vel hoc rumore multatione aut multatione beluae honoratorum fovisse suos modum bonorum catenarum rumore militarium aut insimulatus enim iniecto iniecto."

items = Item.create!(title: "canon eos-5d", description: a, price: "40€",image_url: "canon-eos-5d.jpg",id_owner:)
items = Item.create!(title: "canon eos-6d", description: a, price: "45€",image_url:  "canon-eos-6d.jpg",id_owner:)
items = Item.create!(title: "canon eos-650", description: a, price: "35€",image_url:  "canon-eos-650.jpg",id_owner:)
items = Item.create!(title: "lumix DC-GH5EF", description: a, price: "35€",image_url:  "lumix DC-GH5EF.png",id_owner:)
items = Item.create!(title: "lumix DC-GH5LEF", description: a, price: "30€",image_url:  "lumix DC-GH5LEF.png",id_owner:)
items = Item.create!(title: "lumix DC-GH5SE", description: a, price: "30€",image_url:  "lumix DC-GH5SE.png",id_owner:)
items = Item.create!(title: "nikon D3500", description: a, price: "35€",image_url:  "nikon D3500.png",id_owner:)
items = Item.create!(title: "nikon D600",description: a, price: "35€",image_url:  "nikon-d600.jpg",id_owner:)
items = Item.create!(title: "Leica-C-Lux-Midnight", description: a, price: "60€",image_url:  "Leica-C-Lux-Midnight.jpg",id_owner:)
items = Item.create!(title: "Leica-D-Lux-7", description: a, price: "70€",image_url: "Leica-D-Lux-7.jpg" ,id_owner:)
items = Item.create!(title: "Leica-V-LUX", description: a, price: "85€",image_url:  "LEICA-V-LUX.jpg",id_owner:)
items = Item.create!(title: "sigma-17-70mm-f28-4-dc-macro-os-hsm", detail: a, price: "15€",image_url: "17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg" ,id_owner:)
items = Item.create!(title: "sigma-18-35mm-f18-dc-hsm", description: a, price: "2€",image_url: "location-objectif-sigma-18-35mm-f18-dc-hsm.jpg" ,id_owner:)
items = Item.create!(title: "sigma-35mm-f14-dg-hsm", description: a, price: "15€",image_url: "sigma-35mm-f14-dg-hsm.jpg" ,id_owner:)
items = Item.create!(title: "canon-ef-50mm-f12-l-usm", description: a, price: "30€",image_url:  "canon-ef-50mm-f12-l-usm.jpg",id_owner:)
items = Item.create!(title: "canon-ef-100mm-f28-l-macro-is-usm", description: a, price: "35€",image_url:  "canon-ef-100mm-f28.jpg",id_owner:)
items = Item.create!(title: "canon-ts-e-24mm-f35-l-ii", description: a, price: "45€",image_url:  "canon-ts-e-24mm-f35.jpg",id_owner:)
items = Item.create!(title: "nikkor afp_dx_70_300", description: a, price: "15€",image_url:  "nikkor_afp_dx_70_300_ed_lens--original.png",id_owner:)
items = Item.create!(title: "nikkor_70_300e", description: a, price: "20€",image_url: "nikkor_lens_afp_70_300e_ed_vr--original.png" ,id_owner:)
items = Item.create!(title: "nikkor", description: a, price: "30€",image_url: "nikon.png" ,id_owner:)
items = Item.create!(title: "lumix 45-200", description: a, price: "20€",image_url:  "lumix45-200.png",id_owner:)
items = Item.create!(title: "lumix 42-600", description: a, price: "35€",image_url:  "lumix 42-600.png",id_owner:)
items = Item.create!(title: "lumix 43-600",descriptionl: a, price: "25€",image_url:  "lumix 43-600.png",id_owner:)
items = Item.create!(title: "aputure-ls-mini-20d-148", description: a, price: "45€",image_url: "aputure-ls-mini-20d-148.jpg" ,id_owner:)
items = Item.create!(title: "Fresnel-HMI-4000w-Arri-D40", description: a, price: "15€",image_url:  "Fresnel-HMI-4000w-Arri-D40.png",id_owner:)
items = Item.create!(title: "idv-f50-fresnel-7ab", description: a, price: "35€",image_url:  "idv-f50-fresnel-led-ultra-compact-7ab.jpg",id_owner:)
items = Item.create!(title: "skylite-900fd-5600k-940", description: a, price: "20€",image_url:  "skylite-900fd-5600k-940.jpg",id_owner:)
items = Item.create!(title: "mandarine", description: a, price: "15€",image_url: "mandarine.jpeg" ,id_owner:)
items = Item.create!(title: "PROFOTO-Cine-Reflect-T7BM", description: a, price: "30€",image_url: "PROFOTO-Cine-Reflect-T7BM_sld.jpg" ,id_owner:)
items = Item.create!(title: "Blonde", description: a, price: "20€",image_url: "blonde.jpg" ,id_owner:)
items = Item.create!(title: "canon speedlite-430", description: a, price: "20€",image_url: "canonspeedlite-430.png" ,id_owner:)
items = Item.create!(title: "canon speedlite-470", description: a, price: "25€",image_url: "canon speedlite-470.png" ,id_owner:)
items = Item.create!(title: "canon speedlite-600", description: a, price: "30€",image_url:  "canonspeedlite-600.png",id_owner:)
items = Item.create!(title: "nikon76683351",description: a, price: "15€",image_url:  "nikon76683351.png",id_owner:)
items = Item.create!(title: "nikon1188724895", description: a, price: "2€",image_url: "nikon1188724895.png" ,id_owner:)
items = Item.create!(title: "nikon-speedlight-sb5000", description: a, price: "25€",image_url:  "nikon-speedlight-sb5000.png",id_owner:)
