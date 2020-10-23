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
jobs = ["Cook", "Busser", "Runner", "Server", "Bartender"]
shifts = ["Breakfast", "Lunch", "Dinner"]


15.times do
    Recipe.create(name: Faker::Food.dish, description: Faker::Food.description)
end

10.times do 
    Ingredient.create(name: Faker::Food.fruits, quantity: rand(12..34), quality: ingredient_quality.sample, category: "fruits")
end

Ingredient.create(name: "Milk" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")
Ingredient.create(name: "Eggs" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")
Ingredient.create(name: "Challah Bread" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")
Ingredient.create(name: "Heavy Cream" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")
Ingredient.create(name: "Cheddar Cheese" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")
Ingredient.create(name: "Pancake Mix" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")
Ingredient.create(name: "Pastry Dough" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")
Ingredient.create(name: "Taco Shells" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "dairy")

Ingredient.create(name: "Ground Beef" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")
Ingredient.create(name: "Halibut" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")
Ingredient.create(name: "Ground Pork" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")
Ingredient.create(name: "Tripe" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")
Ingredient.create(name: "Chicken Cutlets" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")
Ingredient.create(name: "Pork Chops" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")
Ingredient.create(name: "Hot Dogs" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")
Ingredient.create(name: "Salisbury Steak" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "meats")

Ingredient.create(name: "Steamed Vegetables" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "leftovers")
Ingredient.create(name: "Mashed Potatoes" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "leftovers")
Ingredient.create(name: "Vegetable Dumplings" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "leftovers")


Ingredient.create(name: "Tomato Paste" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Tuna" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Kidney Beans" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Cream of Mushroom" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Creamed Corn" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Refried Beans" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "Peaches" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")
Ingredient.create(name: "White Gravy" , quantity: rand(12..34), quality: ingredient_quality.sample, category: "canned goods")



10.times do 
    Ingredient.create(name: Faker::Food.spice, quantity: rand(12..34), quality: ingredient_quality.sample, category: "spices")
end

10.times do 
    Ingredient.create(name: Faker::Food.vegetables, quantity: rand(12..34), quality: ingredient_quality.sample, category: "vegetables")
end

# 30.times do
# FamilyMeal.create(recipe_id: Recipe.all.sample.id, employee_id: nil, shift: shifts.sample)
# end

30.times do
RecipeIngredient.create(ingredient_id: Ingredient.all.sample.id, recipe_id: Recipe.all.sample.id)
end