require 'open-uri'
require 'JSON'

$ruby_data = JSON.parse(open("https://data.cityofnewyork.us/resource/hjae-yuav.json").read)

