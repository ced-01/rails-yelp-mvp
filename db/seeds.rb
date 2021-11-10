# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "french", phone_number: "0112325478" }
yolo = { name: "yolo", address: "56A  High St, London E1 6PQ", category: "belgian" }
pizatato = { name: "Pizatato", address: "kiolop chelouadd", category: "italian" }
rop = { name: "rop", address: "Bondon Ebalgueristso", category: "japanese" }
roky = { name: "roky", address: "sjlkjskjjdsjs", category: "italian" }


[dishoom, yolo, pizatato, rop, roky].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
