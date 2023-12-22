# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

News.create([
  { title: 'Sample News 1', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.', image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSf_C3OjH3BbicdZ1UP0jAncMv-HpNvU_B1fg6C8H_vcg&s' },
  { title: 'Sample News 2', content: 'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.', image: 'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg' },
])

puts 'Seed data created successfully.'
