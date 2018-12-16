module CataloguesHelper



def distance (city)
results = Geocoder.search(params["location"])
coordinates = results.first.coordinates
distance = item.distance_to([coordinates])
end

end
