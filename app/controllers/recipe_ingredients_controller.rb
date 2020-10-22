class RecipeIngredientsController < ApplicationController
  before_action :chef_check

    def new
        @recipe_ingredient = RecipeIngredient.new 
    end
    

    def create
        @recipe_ingredient = Recipe_ingredient.create(recipe_ingredient_params)
        if @recipe_ingredient.valid?
          flash[:success] = "Recipe successfully created"
          redirect_to recipe_ingredients_path
        else
          flash[:errors] = @recipe_ingredient.errors.full_messages
          redirect_to new_recipe_ingredient_path
        end
    end

private

    def chef_check
      if @current_employee.job_title != "Chef"
          flash[:chef_errors] = "Access Denied."
          redirect_to family_meals_path
      end
    end

end
