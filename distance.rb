def distance(loc1, loc2)
  rad_per_deg = Math::PI/180  # PI / 180
  rkm         = 6371          # Earth radius in kilometers
  rm          = rkm * 1000    # Radius in meters

  dlat_rad    = (loc2[0]-loc1[0]) * rad_per_deg # Delta, converted to rad
  dlon_rad    = (loc2[1]-loc1[1]) * rad_per_deg

  lat1_rad    = loc1.map { |i| i * rad_per_deg }.first
  lat2_rad    = loc2.map { |i| i * rad_per_deg }.first

  a = Math.sin(dlat_rad/2)**2 + Math.cos(lat1_rad) * Math.cos(lat2_rad) * Math.sin(dlon_rad/2)**2
  c = 2 * Math::atan2(Math::sqrt(a), Math::sqrt(1-a))
  
  rkm * c # Delta in kilometer
end

def calc
  distances = []

  locations = [
    [3.1502978,101.6511437],
    [3.1560868,101.6574744],
    [3.1560268,101.6271740],
    [3.2860268,101.6371740],
    [3.2960268,101.6471740],
    [3.2360268,101.6571740],
  ]

  locations.each_with_index  do |location, i|
    for x in i + 1..locations.length - 1
      result = distance(location, locations[x])
      distances.push("The distance between Point #{i+1} and Point #{x+1} is #{result.round(2)} kilometers")
    end
  end

  puts distances
end

calc