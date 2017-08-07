# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
products  = Product.create([
  {name: "Injustice 2", description: "DC Superhero Fighting Game", price_in_cents: 8999},
  {name: "Horizon Zero Dawn", description: "Futuristic open-world RPG", price_in_cents: 8999},
  {name: "Overwatch", description: "First person shooter", price_in_cents: 8999},
  {name: "FIFA 2017", description: "#1 Hit Soccer Game", price_in_cents: 8999}
])
