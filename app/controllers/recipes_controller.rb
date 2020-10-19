class RecipesController < ApplicationController
    before_action :find_recipes, only: [:edit, :update, :show, :destory]

    def index
        @recipes = Recipe.all
    end

    def show
    end

    def new
        @recipe = Recipe.new
    end
    

    def create
        @recipe = Recipe.create(recipe_params)
        if @recipe.valid?
          flash[:success] = "Recipe successfully created"
          redirect_to recipes_path
        else
          flash[:errors] = @recipe.errors.full_messages
          redirect_to new_recipe_path
        end
    end

    def edit
    end

    def update
        if @recipe.update(recipe_params)
          flash[:success] = "Recipe was successfully updated"
          redirect_to recipe_path(@recipe)
        else
          flash[:errors] = @recipe.errors.full_messages
          redirect_to edit_recipe_path
        end
    end


    
private

    def recipe_params
        params.require(:recipe).permit(:name, :description)
    end

    def find_recipes
        @recipe = Recipe.find(params[:id])
    end
    
end
