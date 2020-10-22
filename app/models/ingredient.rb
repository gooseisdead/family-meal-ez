class Ingredient < ApplicationRecord
    has_many :recipe_ingredients
    has_many :recipes, through: :recipe_ingredients

    validates :name, :category, :quantity, :quality, presence: true
end
