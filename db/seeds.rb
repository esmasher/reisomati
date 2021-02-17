# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

Restaurant.destroy_all
Itinerary.destroy_all
Destination.destroy_all
User.destroy_all

10.times do
    User.create(
        name: Faker::Name.unique.name,
        age: Faker::Number.within(range: 16..80),
        address: Faker::Address.city,
        email: Faker::Internet.safe_email
    )
end
# hotel_name = [ "Adventure Sports", "Arts and Crafts"].map do |hotel_name|
#     Destination.create!({:city => "Berlin", :hotel => hotel_name})
#   end

#   hotel_name = [ "Adventure Sports", "Arts and Crafts"].map do |hotel_name|
#     Destination.create!({:city => "Dubai", :hotel => hotel_name})
#   end
# hotel = ["hotel 1", "hotel 2"]
# hotel_name = [ "Adventure Sports", "Arts and Crafts"].map do |hotel_name|
# end




# restaurant_id = Restaurant.all.map { |restaurant| restaurant.id }


 Destination.create(city: "Berlin", hotel: "Hotel of Berlin", image: "https://user-images.githubusercontent.com/73184313/108207143-f7633980-70ec-11eb-9be1-5508b1451a74.jpeg", language: "German", population: "3.6 million")
 Destination.create(city: "Dubai", hotel: "Hotel of Dubai", image: "https://user-images.githubusercontent.com/73184313/108207610-9daf3f00-70ed-11eb-8673-cf0504d958bf.jpg", language: "Arabic", population: "3.3 million")
 Destination.create(city: "Phuket", hotel: "Hotel of Phuket", image: "https://user-images.githubusercontent.com/73184313/108208200-56757e00-70ee-11eb-83e0-e6c69faa2ea8.jpg", language: "Thai", population: "416 Thousand")
 Destination.create(city: "Paris", hotel: "Hotel of Paris", image: "https://user-images.githubusercontent.com/73184313/108208237-655c3080-70ee-11eb-8af6-df5cc2cabd87.jpg", language: "French", population: "2.1 million")
 Destination.create(city: "Cape Town", hotel: "Hotel of Cape Town", image: "https://user-images.githubusercontent.com/73184313/108208285-73aa4c80-70ee-11eb-86d9-968bc902d281.jpg", language: "English", population: "4.5 million")
 Destination.create(city: "Tokyo", hotel: "Hotel of Tokyo", image: "https://user-images.githubusercontent.com/73184313/108208755-0fd45380-70ef-11eb-9cdb-a114cbdc15f4.jpg", language: "Japanese", population: "9.3 million")
 Destination.create(city: "Auckland", hotel: "Hotel of Auckland", image: "https://user-images.githubusercontent.com/73184313/108208794-1d89d900-70ef-11eb-827d-c90df7e59fc8.jpg", language: "English", population: "1.6 million")
 Destination.create(city: "Cario", hotel: "Hotel of Cario", image: "https://user-images.githubusercontent.com/73184313/108208887-372b2080-70ef-11eb-8b72-3e02c15ac55c.jpg", language: "Arabic", population: "9.1 million")
 Destination.create(city: "Buenos Aires", hotel: "Hotel of Buenos Aires", image: "https://user-images.githubusercontent.com/73184313/108208826-2a0e3180-70ef-11eb-88dd-0c90d390fed8.jpg", language: "Spanish", population: "15.1 million")
 Destination.create(city: "Bishkek", hotel: "Hotel of Bishkek", image: "https://user-images.githubusercontent.com/73184313/108208555-cbe14e80-70ee-11eb-87d5-3515084251fd.png", language: "Russian", population: "1 million")


 user_id = User.all.map { |user| user.id }
 destination_id = Destination.all.map { |destination| destination.id }

 10.times do
    Restaurant.create(
        name: Faker::Restaurant.unique.name,
        cuisine: Faker::Restaurant.type,
        review: Faker::Restaurant.review,
        destination_id: destination_id.sample
    )
end




10.times do
    Itinerary.create(
        user_id: user_id.sample,
        destination_id: destination_id.sample
    )
end




<<<<<<< HEAD
=======





Hotel.create(destination_id: 1, rating: "5 stars", name: "The Ritz-Carlton, Berlin" )
Hotel.create(destination_id: 1, rating: "4 stars", name: "Hotel Zoo Berlin")
Hotel.create(destination_id: 1, rating: "5 stars", name: "SO/ Berlin Das Stue")

Hotel.create(destination_id: 2, rating: "4 stars", name: "Burj Al Arab" )
Hotel.create(destination_id: 2, rating: "4 stars", name: "W Dubai The Palm")
Hotel.create(destination_id: 2, rating: "5 stars", name: "Palazzo Versace Dubai")

Hotel.create(destination_id: 3, rating: "3 stars", name: "Novotel Phucket City" )
Hotel.create(destination_id: 3, rating: "4 stars", name: "Woo Gallery and Botique Hotel")
Hotel.create(destination_id: 3, rating: "5 stars", name: "The Blanket")

Hotel.create(destination_id: 4, rating: "5 stars", name: "Hôtel des Grands Hommes" )
Hotel.create(destination_id: 4, rating: "4 stars", name: "Pullman Paris Eiffel Tower")
Hotel.create(destination_id: 4, rating: "5 stars", name: "Four Seasons Hotel George V, Paris")

Hotel.create(destination_id: 5, rating: "4 stars", name: "The Bay Hotel" )
Hotel.create(destination_id: 5, rating: "4 stars", name: "One and Only Cape Town")
Hotel.create(destination_id: 5, rating: "4 stars", name: "Cape Town Marriott Hotel Crystal Towers")

Hotel.create(destination_id: 6, rating: "5 stars", name: "Aman Tokyo" )
Hotel.create(destination_id: 6, rating: "5 stars", name: "Shinjuku Granbell Hotel")
Hotel.create(destination_id: 6, rating: "5 stars", name: "Shangri-La Hotel, Tokyo")

Hotel.create(destination_id: 7, rating: "3 stars", name: "Hilton Auckland" )
Hotel.create(destination_id: 7, rating: "4 stars", name: "The Grand By SkyCity")
Hotel.create(destination_id: 7, rating: "5 stars", name: "Hotel DeBrett")

Hotel.create(destination_id: 8, rating: "4 stars", name: "The St. Regis, Cairo" )
Hotel.create(destination_id: 8, rating: "4 stars", name: "Dusit Thani LakeView Cairo")
Hotel.create(destination_id: 8, rating: "5 stars", name: "The Nile Ritz-Carlton, Cairo")

Hotel.create(destination_id: 9, rating: "4 stars", name: "Four Seasons Hotel Buenos Aires" )
Hotel.create(destination_id: 9, rating: "4 stars", name: "Alvear Palace Hotel")
Hotel.create(destination_id: 9, rating: "5 stars", name: "Algodon Mansion")

Hotel.create(destination_id: 10, rating: "3 stars", name: "Park Hotel" )
Hotel.create(destination_id: 10, rating: "3 stars", name: "Golden Tulip Bishkek Hotel")
Hotel.create(destination_id: 10, rating: "4 stars", name: "Plaza Hotel Bishkek")

Review.create(hotel_id: 1, comment: "Great Stay at the Ritz-Carlton Berlin, the staff was friendly and the rooms were clean")






>>>>>>> b9f2b0f3efe3d43ac0326965a78b138c3884d78f
puts "After successfully seeding: "
puts "#{User.all.count} users"
puts "#{Destination.all.count} destinations"
puts "#{Itinerary.all.count} itineraries"
puts "#{Hotel.all.count} Hotels"
puts "#{Review.all.count} reviews"
