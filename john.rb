countries = {
"United States of America" => "USA",
"Canada" => "CA",
"Mexico" => "ME",
"Ecuador" => "EC"
}



continents = {
"NA" => "North America",
"SA" => "South America"
}

continent_by_country = {
"USA" => "NA",
"CA" => "NA",
"ME" => "NA",
"EC" => "SA"
}

countries.each do |countries, abv|
  origin = continents[continent_by_country[abv]]
  puts "#{countries} abbreviated is #{abv}, and is on the continent #{origin}."
end
