# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.destroy_all
Recipe.destroy_all
RecipeIngredient.destroy_all
Employee.destroy_all
FamilyMeal.destroy_all

ingredient_quality = ["fresh", "day-old", "expiring", "use today"]
jobs = ["cook", "busser", "runner", "server", "bartender"]
shifts = ["breakfast", "lunch", "dinner"]
days = ["Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun"]


15.times do
    Recipe.create(name: Faker::Food.dish, description: Faker::Food.description, day: days.sample, shift: shifts.sample)
end

1.times do
    Employee.create(name: Faker::Name.name, job_title: "chef", shift: shifts.sample, day: days.sample)
end

    # Employee.create(name: "Greg", job_title: "Chef", shift: shifts.sample, day: days.sample)

20.times do 
    Ingredient.create(name: Faker::Food.fruits, quantity: rand(1..15), quality: ingredient_quality.sample, category: "fruits")
end

Ingredient.create(name: "Tomato Paste" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Tuna" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Kidney Beans" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Cream of Mushroom" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Creamed Corn" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Refried Beans" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Peaches" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "White Gravy" , quantity: rand(1..15), quality: ingredient_quality.sample, category: "canned goods")


20.times do 
    Ingredient.create(name: Faker::Food.spice, quantity: rand(1..15), quality: ingredient_quality.sample, category: "spices")
end

20.times do 
    Ingredient.create(name: Faker::Food.vegetables, quantity: rand(1..15), quality: ingredient_quality.sample, category: "vegetables")
end

30.times do
FamilyMeal.create(recipe_id: Recipe.all.sample.id, employee_id: nil, shift: shifts.sample)
end

30.times do
RecipeIngredient.create(ingredient_id: Ingredient.all.sample.id, recipe_id: Recipe.all.sample.id)
end