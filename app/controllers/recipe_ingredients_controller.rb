class RecipeIngredientsController < ApplicationController

    def new
        @recipe_ingredient = RecipeIngredient.new 
    end
    

    def create
        @recipe_ingredient = Recipe_ingredient.create(recipe_ingredient_params)
        if @recipe_ingredient.valid?
          flash[:success] = "Recipe_ingredient successfully created"
          redirect_to recipe_ingredients_path
        else
          flash[:errors] = @recipe_ingredient.errors.full_messages
          redirect_to new_recipe_ingredient_path
        end
    end
end
