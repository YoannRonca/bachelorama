# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Deleting DB....."

User.destroy_all
Animation.destroy_all



puts 'Creating 6 animations...'

Animation.create(title: "Clown yoself!", category: "clown", price:"200")
Animation.create(title: "Throw yo'dwarf", category: "dwarf", price:"500")
Animation.create(title: "Better than Ariel", category: "mermaid", price:"100")
Animation.create(title: "Lamas in Pajamas", category: "lama", price:"800")
Animation.create(title: "Gorillaz like in N", category: "monkey", price:"400")
Animation.create(title: "Lose yo wife", category: "stripper", price:"1000")

User.create(email: "yoann@gmail.com", password: "12345")
User.create(email: "livia@gmail.com", password: "5678")
User.create(email: "muriel@gmail.com", password: "98765")
User.create(email: "bruno@gmail.com", password: "54321")

puts 'Finished!'
