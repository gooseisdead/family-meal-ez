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

10.times do
Recipe.create(name: Faker::Food.dish, description: Faker::Food.description)
end

25.times do
Employee.create(name: Faker::Name.name, job_title: jobs.sample, shift: shifts.sample)
end

20.times do 
Ingredient.create(name: Faker::Food.ingredient, quantity: rand(1..15), quality: ingredient_quality.sample)
end

30.times do
FamilyMeal.create(recipe_id: Recipe.all.sample.id, employee_id: Employee.all.sample.id, shift: shifts.sample)
end

30.times do
RecipeIngredient.create(ingredient_id: Ingredient.all.sample.id, recipe_id: Recipe.all.sample.id)
end