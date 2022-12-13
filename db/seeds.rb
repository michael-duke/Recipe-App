# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

users = User.create([
    { name: 'Samiullah'},
    { name: 'Michael'}
])

foods = Food.create([
    {user_id: 1, name: 'Potatoe', measurement_unit: 'grams', price: 3, quantity: 15},
    {user_id: 2, name: 'Cheery', measurement_unit: 'grams', price: 5, quantity: 20},
    {user_id: 1, name: 'Carrot', measurement_unit: 'grams', price: 4, quantity: 30},
    {user_id: 2, name: 'Flour', measurement_unit: 'kg', price: 14, quantity: 84},
])
