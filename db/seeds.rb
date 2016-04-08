require_relative '../parseable'
require_relative '../app/models/public_park_toilet'

$ruby_data.each do |park|
  PublicParkToilet.create(park)
end
