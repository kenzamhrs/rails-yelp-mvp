# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
zuma = { name: "Zuma", address: "5 Raphael St, Knightsbridge, London SW7 1DL", category: "Japanese", phone_number: "+44 20 7584 1010" }
orient = { name: "Orient", address: "15 Wardour St, West End, London W1D 6PH", category: "Chinese", phone_number: "+44 20 7989 8880" }
gloria = { name: "Gloria", address: "54-56 Great Eastern St, Hackney, London EC2A 3QR", category: "Italian", phone_number: "+44 7 394 712 601" }
gold = { name: "Gold", address: "95-97 Portobello Rd, Notting Hill, London W11 2QB", category: "French", phone_number: "+44 20 3146 0747" }
ottolenghi = { name: "Ottolenghi", address: "63 Ledbury Rd, Notting Hill, London W11 2AD", category: "Belgian", phone_number: "+44 20 7727 1121" }

[ zuma, orient, gloria, gold, ottolenghi ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"

# puts "Cleaning database..."
# Review.destroy_all

# puts "Creating reviews..."
# zuma = { content: "The best Japanese in town!", rating: 5 }
# orient = { content: "Average", rating: 3 }
# gloria = { content: "So good!", rating: 4 }
# gold = { content: "Delicious Mediterranean food!", rating: 4 }
# ottolenghi = { content: "Amazing restaurant!", rating: 5 }

# [ zuma, orient, gloria, gold, ottolenghi ].each do |attributes|
#   review = Review.create!(attributes)
#   puts "Review saved!"
# end
# puts "Finished!"
