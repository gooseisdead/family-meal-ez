class Recipe < ApplicationRecord
    has_many :family_meals
    has_many :employees, through: :family_meals
    has_many :recipe_ingredients
    has_many :ingredients, through: :recipe_ingredients
    
    validates :name, :description, :shift, presence: true
end
