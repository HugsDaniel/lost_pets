# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

Pet.create!(name: "Snoop", species: "dog", address: "Compton", age: 50, found_date: Date.today - 1.day)
Pet.create!(name: "Catwoman", species: "cat", address: "Gotham", age: 25, found_date: Date.today - 2.day)
Pet.create!(name: "Roger", species: "rabbit", address: "La Garenne", age: 3, found_date: Date.today - 1.week)
