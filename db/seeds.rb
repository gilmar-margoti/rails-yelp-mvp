# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
alforno = {name: "Al Forno - Wimbledon", address: "2A King's Rd, London SW19 8QN", phone_number: "020 8540 5710", category: "italian"}
pizzaexpress = {name: "Pizza Express - Putney", address: "144 Upper Richmond Rd, London SW15 2SW", phone_number: "020 8789 1948", category: "italian"}
preto = {name: "Preto - Putney", address: "31-33 Putney High St, London SW15 1SP", phone_number: "020 8788 4388", category: "french"}
wagamama = {name: "Wagamama - Putney", address: "50-54 Putney High St, London SW15 1SQ", phone_number: "020 8785 3636", category: "chinese"}
thesushico = {name: "The Sushi Co - Putney", address: "82 Putney High St, London SW15 1RB", phone_number: "020 8076 1676", category: "japanese"}

[alforno, pizzaexpress, preto, wagamama, thesushico].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
