require_relative '../app/models/public_park_toilet'

require 'open-uri'
require 'JSON'

$ruby_data = JSON.parse(open("https://data.cityofnewyork.us/resource/hjae-yuav.json").read)

$ruby_data.each do |park|
  PublicParkToilet.create(park)
end

