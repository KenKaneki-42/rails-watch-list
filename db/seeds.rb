# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

p 'Delete ancient seeds'
Bookmark.delete_all
List.delete_all
Movie.delete_all

# p 'Creating seeds'
# 10.times do
#   faker_values = {
#     title: Faker::Movie.title,
#     overview: Faker::Movie.quote,
#     poster_url: Faker::Internet.url,
#     rating: rand(0...10).round(1)
#     # category: %w[chinese italian japanese french belgian].sample
#   }
#   movie = Movie.new(faker_values)
#   movie.save
# end



wonder_woman = Movie.create(title: "Wonder Woman 1984", overview: "Wonder Woman comes into conflict with the Soviet Union during the Cold War in the 1980s", poster_url: "https://image.tmdb.org/t/p/original/8UlWHLMpgZm9bx6QYh0NFoq67TZ.jpg", rating: 6.9)
shawshank = Movie.create(title: "The Shawshank Redemption", overview: "Framed in the 1940s for double murder, upstanding banker Andy Dufresne begins a new life at the Shawshank prison", poster_url: "https://image.tmdb.org/t/p/original/q6y0Go1tsGEsmtFryDOJo3dEmqu.jpg", rating: 8.7)
titanic = Movie.create(title: "Titanic", overview: "101-year-old Rose DeWitt Bukater tells the story of her life aboard the Titanic.", poster_url: "https://image.tmdb.org/t/p/original/9xjZS2rlVxm8SFx8kPC3aIGCOYQ.jpg", rating: 7.9)
ocean = Movie.create(title: "Ocean's Eight", overview: "Debbie Ocean, a criminal mastermind, gathers a crew of female thieves to pull off the heist of the century.", poster_url: "https://image.tmdb.org/t/p/original/MvYpKlpFukTivnlBhizGbkAe3v.jpg", rating: 7.0)

action_list = List.create(name: "Action", banner_url: "https://fr.web.img3.acsta.net/r_654_368/newsv7/15/12/22/12/09/505172.jpg")
drama_list = List.create(name: "Drama", banner_url: "https://3238leblogdemarvelll-1278.kxcdn.com/wp-content/uploads/2021/05/Les-Mitchell-contre-les-machines-banniere-1200x630.jpg")

Bookmark.create(list: action_list, movie: wonder_woman, comment: "best wonderful")
Bookmark.create(list: action_list, movie: shawshank, comment: "best movie ever")
Bookmark.create(list: action_list, movie: ocean, comment: "best gambling movie")
Bookmark.create(list: drama_list, movie: titanic, comment: "a beautiful story")

p 'Ended creation'
