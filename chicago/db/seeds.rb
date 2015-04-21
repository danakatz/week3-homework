Place.delete_all

[{:title => "Willis Tower",
  :photo_url => "http://msnbcmedia.msn.com/i/MSNBC/Components/Photo/_new/100706-travel-chicagoskyline-hmed-1120a.jpg",
  :price => 1950, :description => "Tallest building in Chicago."},
{:title => "Millenium Park",
  :photo_url => "http://www.som.com/FILE/13948/millenniumparkmp_1400x800_peterberreras_06jpg.jpg?h=800&s=17",
  :price => 0, :description => "Beautiful outdoor spaces."},
{:title => "Symphony Center",
  :photo_url => "http://www.grandinhood.com/books/symphony/symphony2.jpg",
  :price => 7500, :description => "The best classical music."},
{:title => "Museum of Contemporary Art",
  :photo_url => "https://musicrowgirl.files.wordpress.com/2014/07/museum-of-contemporary-art.jpg",
  :price => 1200, :description => "One of the greatest gift shops anywhere."},
{:title => "Shedd Aquarium",
  :photo_url => "http://media-cdn.tripadvisor.com/media/photo-s/05/4c/60/4b/shedd-aquarium.jpg",
  :price => 3500, :description => "You can watch them feed the sharks!"}
].each do |place_hash|
  p = Place.new
  p.title = place_hash[:title]
  p.photo_url = place_hash[:photo_url]
  p.price = place_hash[:price]
  p.description = place_hash[:description]
  p.save
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
