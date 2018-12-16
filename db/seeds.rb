# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = "In partes multatione vel militarium fovisse fovisse damnabatur suos postulatus vel hoc rumore multatione aut multatione beluae honoratorum fovisse suos modum bonorum catenarum rumore militarium aut insimulatus enim iniecto iniecto."


1.times do |item|

items = Item.create!(title: "canon eos-5d", description: a, price: "40€", user_id: "1", category_id: "1", address: '20 rue Saint Roch 75001 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/canon-eos-5d.jpg'), filename: 'canon-eos-5d.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon eos-6d", description: a, price: "45€", user_id: "1", category_id: "1", address: '19 rue Saint Roch 75001 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/canon-eos-6d.jpg'), filename: 'canon-eos-6d.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon eos-650", description: a, price: "35€", user_id: "1", category_id: "1", address: '14 rue Saint Roch 75001 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/canon-eos-650.jpg'), filename: 'canon-eos-650.jpg', content_type: 'image/jpg')

items = Item.create!(title: "lumix DC-GH5EF", description: a, price: "35€", user_id: "1", category_id: "1", address: '3 rue de Lisbonne 75008 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/lumix DC-GH5EF.png'), filename: 'lumix DC-GH5EF.png', content_type: 'image/png')

items = Item.create!(title: "lumix DC-GH5LEF", description: a, price: "30€", user_id: "1", category_id: "1", address: '5 rue de Lisbonne 75008 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/lumix DC-GH5LEF.png'), filename: 'lumix DC-GH5LEF.png', content_type: 'image/png')

items = Item.create!(title: "lumix DC-GH5SE", description: a, price: "30€", user_id: "1", category_id: "1", address: '10 rue de Lisbonne 75008 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/lumix DC-GH5SE.png'), filename: 'lumix DC-GH5SE.png', content_type: 'image/png')

items = Item.create!(title: "nikon D3500", description: a, price: "35€", user_id: "1", category_id: "1", address: '3 Place du Louvres 75001 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/nikon D3500.png'), filename: 'nikon D3500.png', content_type: 'image/png')

items = Item.create!(title: "nikon D600",description: a, price: "35€", user_id: "1", category_id: "1", address: '12 rue des plantes 75014 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/nikon-d600.jpg'), filename: 'nikon-d600.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Leica-C-Lux-Midnight", description: a, price: "60€", user_id: "1", category_id: "1", address: '35 rue de Bourgogne 75007 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/Leica-C-Lux-Midnight.jpg'), filename: 'Leica-C-Lux-Midnight.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Leica-D-Lux-7", description: a, price: "70€", user_id: "1", category_id: "1", address: '20 rue Dussoubs 75002 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/Leica-D-Lux-7.jpg'), filename: 'Leica-D-Lux-7.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Leica-V-LUX", description: a, price: "85€", user_id: "1", category_id: "1", address: '20 RUE BREVIN 75014 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/boitier1/LEICA-V-LUX.jpg'), filename: 'LEICA-V-LUX.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-17-70mm-f28-4-dc-macro-os-hsm", description: a, price: "15€", user_id: "1", category_id: "3", address: '71 avenue Henri Martin 75016 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg'), filename: '17-70mm-f28-4-dc-macro-os-hsm-sigma.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-18-35mm-f18-dc-hsm", description: a, price: "2€", user_id: "1", category_id: "3", address: '120 rue Ordener 75018 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/location-objectif-sigma-18-35mm-f18-dc-hsm.jpg'), filename: 'location-objectif-sigma-18-35mm-f18-dc-hsm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "sigma-35mm-f14-dg-hsm", description: a, price: "15€", user_id: "1", category_id: "3", address: '20 Boulevard Diderot 75012 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/sigma-35mm-f14-dg-hsm.jpg'), filename: 'sigma-35mm-f14-dg-hsm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon-ef-50mm-f12-l-usm", description: a, price: "30€", user_id: "1", category_id: "3", address: '48 rue St Andre des arts 75006 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/canon-ef-50mm-f12-l-usm.jpg'), filename: 'canon-ef-50mm-f12-l-usm.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon-ef-100mm-f28-l-macro-is-usm", description: a, price: "35€", user_id: "1", category_id: "3", address: '7 rue Jean Nicot 75007 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/canon-ef-100mm-f28.jpg'), filename: 'canon-ef-100mm-f28.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon-ts-e-24mm-f35-l-ii", description: a, price: "45€", user_id: "1", category_id: "3", address: '23 rue du Docteur Potain 75019 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/canon-ts-e-24mm-f35.jpg'), filename: 'canon-ts-e-24mm-f35.jpg', content_type: 'image/jpg')

items = Item.create!(title: "nikkor afp_dx_70_300", description: a, price: "15€", user_id: "1", category_id: "3", address: '3 place Jacques Froment 75018 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/nikkor_afp_dx_70_300.png'), filename: 'nikkor_afp_dx_70_300.png', content_type: 'image/png')

items = Item.create!(title: "nikkor", description: a, price: "30€", user_id: "1", category_id: "3", address: '18 rue Batignolles 75017 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/nikon.png'), filename: 'nikon.png', content_type: 'image/png')

items = Item.create!(title: "lumix 45-200", description: a, price: "20€", user_id: "1", category_id: "3", address: '24 rue Saint Roch 75001 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/lumix-45-200.png'), filename: 'lumix-45-200.png', content_type: 'image/png')

items = Item.create!(title: "lumix 43-600", description: a, price: "25€", user_id: "1", category_id: "3", address: '365 rue de Vaugirad 75015 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/objectifs2/lumix-43-600.png'), filename: 'lumix-43-600.png', content_type: 'image/png')

items = Item.create!(title: "aputure-ls-mini-20d-148", description: a, price: "45€", user_id: "1", category_id: "2", address: '12 rue peins 75013 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/aputure-ls-mini-20d-148.jpg'), filename: 'aputure-ls-mini-20d-148.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Fresnel-HMI-4000w-Arri-D40", description: a, price: "15€", user_id: "1", category_id: "2", address: '33 bvd de picpus 75012 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/Fresnel-HMI-4000w-Arri-D40.png'), filename: 'Fresnel-HMI-4000w-Arri-D40.png', content_type: 'image/png')

items = Item.create!(title: "idv-f50-fresnel-7ab", description: a, price: "35€", user_id: "1", category_id: "2", address: '130 avenue Ledru Rollin 75011 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/idv-f50-fresnel-led-ultra-compact-7ab.jpg'), filename: 'idv-f50-fresnel-led-ultra-compact-7ab.jpg', content_type: 'image/jpg')

items = Item.create!(title: "skylite-900fd-5600k-940", description: a, price: "20€", user_id: "1", category_id: "2", address: '23 bis rue Bichat 75010 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/skylite-900fd-5600k-940.jpg'), filename: 'skylite-900fd-5600k-940.jpg', content_type: 'image/jpg')

items = Item.create!(title: "ISO kit d'éclairage continu 1 Mandarine 800W + 1 pied + coupe flux", description: a, price: "15€", user_id: "1", category_id: "2", address: '4 Place du Louvres 75001 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/mandarine.jpg'), filename: 'mandarine.jpg', content_type: 'image/jpg')


items = Item.create!(title: "PROFOTO-Cine-Reflect-T7BM", description: a, price: "30€", user_id: "1", category_id: "2", address: '68 rue des plantes 75014 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/PROFOTO-Cine-Reflect-T7BM_sld.jpg'), filename: 'PROFOTO-Cine-Reflect-T7BM_sld.jpg', content_type: 'image/jpg')

items = Item.create!(title: "Blonde", description: a, price: "20€", user_id: "1", category_id: "2", address: '29 rue de Bourgogne 75007 PARIS', city: "Paris")
items.item_image.attach(io: File.open('app/assets/images/éclairage3/blonde.jpg'), filename: 'blonde.jpg', content_type: 'image/jpg')

items = Item.create!(title: "canon speedlite-430", description: a, price: "20€", user_id: "1", category_id: "2", address: '125 bis rue d Avron 75020 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/canon-speedlite-430.png'), filename: 'canon-speedlite-430.png', content_type: 'image/png')

items = Item.create!(title: "canon speedlite-470", description: a, price: "25€", user_id: "1", category_id: "2", address: '22 rue Meynadier 75019 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/canon-speedlite-470.png'), filename: 'canon-speedlite-470.png', content_type: 'image/png')

items = Item.create!(title: "canon speedlite-600", description: a, price: "30€", user_id: "1", category_id: "2", address: '5 Boulevard Diderot 75012 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/canon-speedlite-600.png'), filename: 'canon-speedlite-600.png', content_type: 'image/png')

items = Item.create!(title: "nikon76683351",description: a, price: "15€", user_id: "1", category_id: "2", address: '14 RUE BREVIN 75014 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/nikon76683351.png'), filename: 'nikon76683351.png', content_type: 'image/png')

items = Item.create!(title: "nikon1188724895", description: a, price: "2€", user_id: "1", category_id: "2", address: '115 bis rue Ordener 75018 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/nikon1188724895.png'), filename: 'nikon1188724895.png', content_type: 'image/png')

items = Item.create!(title: "nikon-speedlight-sb5000", description: a, price: "25€", user_id: "1", category_id: "2",address: ' 5 Boulevard Diderot 75012 PARIS', city: "Paris")
 items.item_image.attach(io: File.open('app/assets/images/éclairage3/nikon-speedlight-sb5000.png'), filename: 'nikon-speedlight-sb5000.png', content_type: 'image/png')

end