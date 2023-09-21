# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.new(email: 'dekristaps@gmail.com', nickname: 'LinuPuika')
user.password = 'admin123'
user.password_confirmation = 'admin123'
user.save

user2 = User.new(email: 'test@example.com', nickname: 'Testy Testerson')
user2.password = 'admin123'
user2.password_confirmation = 'admin123'
user2.save