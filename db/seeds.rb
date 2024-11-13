# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

7.times do |index|
  f_name = "name_#{index}"
  f_addr = "address_details_#{index}"
  f_desc = "description_#{index}: aaaaaaa a aaaaaaa aa aaaaaaaaaaaaaaaa aaaaaaaaa aaaa"
  f_price = (0..100).to_a.sample
  f_guests = (0..10).to_a.sample
  Flat.create!(name: f_name, address: f_addr, description: f_desc, price_per_night: f_price, number_of_guests: f_guests)
end
