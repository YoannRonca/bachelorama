# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Deleting users....."
User.destroy_all

puts "Deleting animations....."
Animation.destroy_all

puts 'Creating 4 users...'

yoann = User.create!(email: "yoann@gmail.com", password: "123425")
livia = User.create!(email: "livia@gmail.com", password: "564278")
muriel = User.create!(email: "muriel@gmail.com", password: "928765")
bruno = User.create!(email: "bruno@gmail.com", password: "543221")

puts 'Creating 6 animations...'

Animation.create!(title: "Clown yoself!", category: "clown", price:"200", user: yoann)
Animation.create!(title: "Throw yo'dwarf", category: "dwarf", price:"500", user: livia)
Animation.create!(title: "Better than Ariel", category: "mermaid", price:"100", user: muriel)
Animation.create!(title: "Lamas in Pajamas", category: "lama", price:"800", user: bruno)
Animation.create!(title: "Gorillaz like in N", category: "monkey", price:"400", user: bruno)
Animation.create!(title: "Lose yo wife", category: "stripper", price:"1000", user: livia)


puts 'Finished!'

