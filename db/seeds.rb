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
    {user_id: 1, name: 'Milk', measurement_unit: 'ml', price: 2, quantity: 100},
    {user_id: 2, name: 'Sugar', measurement_unit: 'grams', price: 3, quantity: 50},
    {user_id: 1, name: 'Egg', measurement_unit: 'pieces', price: 1, quantity: 10},
    {user_id: 2, name: 'Bread', measurement_unit: 'pieces', price: 2, quantity: 20},
    {user_id: 1, name: 'Butter', measurement_unit: 'grams', price: 4, quantity: 50},
    {user_id: 2, name: 'Salt', measurement_unit: 'grams', price: 1, quantity: 100}
])

recipes = Recipe.create([
    {user_id: 1, name: 'Potatoe Salad', description: 'A delicious potatoe salad', preparation_time: 10, cooking_time: 20, public: true},
    {user_id: 2, name: 'Cheery Pie', description: 'A delicious cheery pie', preparation_time: 20, cooking_time: 30, public: true},
    {user_id: 1, name: 'Carrot Cake', description: 'A delicious carrot cake', preparation_time: 30, cooking_time: 40, public: false},
    {user_id: 2, name: 'Flour Bread', description: 'A delicious flour bread', preparation_time: 40, cooking_time: 50, public: true},
    {user_id: 1, name: 'Milk Shake', description: 'A delicious milk shake', preparation_time: 50, cooking_time: 60, public: true},
    {user_id: 2, name: 'Sugar Cookies', description: 'A delicious sugar cookies', preparation_time: 60, cooking_time: 70, public: false}
])