# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

productDescription = "Lorem ipsum dolor amet selfies truffaut butcher pour-over marfa, roof party vice. Ethical neutra gluten-free kale chips activated charcoal seitan XOXO cardigan wolf selfies YOLO. Intelligentsia lyft celiac, locavore prism freegan pour-over waistcoat ethical sartorial. Typewriter raclette coloring book quinoa. Air plant sriracha activated charcoal vegan irony coloring book. Stumptown +1 iceland celiac, four loko XOXO edison bulb salvia kombucha sartorial. Tbh hammock bespoke typewriter fanny pack banjo ugh williamsburg health goth pok pok pickled direct trade subway tile. Intelligentsia vaporware wolf flannel. Brunch small batch neutra blue bottle, mumblecore listicle glossier."

p1 = Product.create(name: "Mac Desktop", description: productDescription, image_url: "https://i.imgur.com/HHBIYn5.png",colour: 'white' ,price: 800.00)
p2 = Product.create(name: "Drone", description: productDescription, image_url: "https://imgur.com/qxIuSTf.png",colour: 'white' ,price: 400.00)
p3 = Product.create(name: "Camara Lumix", description: productDescription, image_url: "https://imgur.com/1N4xFAu.png",colour: 'white' ,price: 200.00)
p4 = Product.create(name: "PS4", description: productDescription, image_url: "https://imgur.com/qcWcdsc.png",colour: 'white' ,price: 250.00)
p5 = Product.create(name: "Mac Book", description: productDescription, image_url: "https://imgur.com/OBoGpkZ.png",colour: 'white' ,price: 500.00)

o1 = Order.create(user_id: 1, product_id: p1.id, total: 10.0)
o2 = Order.create(user_id: 1, product_id: p2.id, total: 5.0)

c1 = Category.create(name: 'tech')
c2 = Category.create(name: 'computers')
c3 = Category.create(name: 'photos')
c4 = Category.create(name: 'games')

p1.categories << [c1, c2]
p2.categories << [c1, c3]
p3.categories << [c1, c3]
p4.categories << [c1, c4]
p5.categories << [c1, c2]