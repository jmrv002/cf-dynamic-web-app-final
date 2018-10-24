# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

p1 = Product.create(name: "text", description: "description", image: "img.com", price: 200.00, rating:3)

c1 = Category.create(name: 'tech')
c2 = Category.create(name: 'cooking')

p1.categories << [c1, c2]