class RecipesController < ApplicationController
    before_action :find_recipes, only: [:edit, :update, :show, :destory]

    def index
        @recipes = Recipe.all
    end

    def show
    end
    
private

    def recipe_params
        params.require(:recipe).permit(:name, :description)
    end

    def find_recipes
        @recipe = Recipe.find(params[:id])
    end
    
end
