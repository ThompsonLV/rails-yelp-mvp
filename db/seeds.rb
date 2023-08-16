# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts '------------------'
puts 'Cleaning database'
puts '------------------'
Restaurant.destroy_all

puts 'Creating restaurants...'
puts '.......................'
dishoom = { name: 'Dishoom', address: '12 rue du camenbert', category: 'chinese' }
pizza_east = { name: 'Dominos Pizza', address: '198 avenue Pierre Edouard', category: 'italian' }
pokawa = { name: 'Pokawa', address: '28 impasse Jean Moulin', category: 'japanese' }
sushi_life = { name: 'Sushi for life', address: '9 avenue du Président', category: 'french' }
bocuse = { name: 'Bocuse', address: '56A Shoreditch High St, London E1 6PQ', category: 'belgian' }

[dishoom, pizza_east, pokawa, sushi_life, bocuse].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Creating #{restaurant.name}"
end

puts '------------------'
puts 'Finished'
puts '------------------'
