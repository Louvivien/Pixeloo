module CategoriesHelper

def city (item)
results = Geocoder.search([item.latitude, item.longitude])
results.first.city
end

end
